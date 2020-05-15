.class public Lcom/android/server/wifi/WifiLastResortWatchdog;
.super Ljava/lang/Object;
.source "WifiLastResortWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    }
.end annotation


# static fields
.field public static final BSSID_ANY:Ljava/lang/String; = "any"

.field public static final BUGREPORT_TITLE:Ljava/lang/String; = "Wifi watchdog triggered"

.field public static final FAILURE_CODE_ASSOCIATION:I = 0x1

.field public static final FAILURE_CODE_AUTHENTICATION:I = 0x2

.field public static final FAILURE_CODE_DHCP:I = 0x3

.field public static final FAILURE_THRESHOLD:I = 0x7

.field public static final MAX_BSSID_AGE:I = 0xa

.field public static final PROB_TAKE_BUGREPORT_DEFAULT:D = 0.08

.field private static final TAG:Ljava/lang/String; = "WifiLastResortWatchdog"


# instance fields
.field private mBugReportProbability:D

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mRecentAvailableNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

.field private mSsidFailureCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeLastTrigger:J

.field private mVerboseLoggingEnabled:Z

.field private mWatchdogAllowedToTrigger:Z

.field private mWatchdogFixedWifi:Z

.field private mWifiIsConnected:Z

.field private mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SelfRecovery;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;)V
    .locals 3
    .param p1, "selfRecovery"    # Lcom/android/server/wifi/SelfRecovery;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;
    .param p3, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p4, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p5, "wifiStateMachineLooper"    # Landroid/os/Looper;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    .line 84
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    .line 94
    const-wide v1, 0x3fb47ae147ae147bL    # 0.08

    iput-wide v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mBugReportProbability:D

    .line 98
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogFixedWifi:Z

    .line 102
    iput-object p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    .line 103
    iput-object p2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mClock:Lcom/android/server/wifi/Clock;

    .line 104
    iput-object p3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 105
    iput-object p4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 106
    iput-object p5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiStateMachineLooper:Landroid/os/Looper;

    .line 107
    return-void
.end method

.method private checkIfAtleastOneNetworkHasEverConnected()Z
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 378
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget-object v2, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 379
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget-object v2, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v0, 0x1

    return v0

    .line 382
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    :cond_0
    goto :goto_0

    .line 383
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkTriggerCondition()Z
    .locals 4

    .line 351
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiLastResortWatchdog"

    const-string v1, "checkTriggerCondition."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 356
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    if-nez v0, :cond_2

    return v1

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 360
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->isOverFailureThreshold(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 363
    return v1

    .line 365
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    :cond_3
    goto :goto_0

    .line 368
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->checkIfAtleastOneNetworkHasEverConnected()Z

    move-result v0

    .line 369
    .local v0, "atleastOneNetworkHasEverConnected":Z
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_5

    .line 370
    const-string v1, "WifiLastResortWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTriggerCondition: return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->checkIfAtleastOneNetworkHasEverConnected()Z

    move-result v1

    return v1
.end method

.method private incrementBssidFailureCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .line 322
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    .line 323
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 324
    .local v0, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v0, :cond_0

    .line 325
    const-string v1, "WifiLastResortWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFailureCountForNetwork: Unable to find Network ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 329
    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    const-string v1, "WifiLastResortWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFailureCountForNetwork: Failed connection attempt has wrong ssid. Failed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], buffered ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_1
    iget-object v1, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_2

    .line 336
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_2

    .line 337
    const-string v1, "WifiLastResortWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFailureCountForNetwork: network has no config ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->incrementFailureCount(I)V

    .line 342
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementSsidFailureCount(Ljava/lang/String;I)V

    .line 343
    return-void
.end method

.method private incrementSsidFailureCount(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 308
    .local v0, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 309
    const-string v1, "WifiLastResortWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFailureCountForNetwork: No networks for ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 312
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 313
    .local v1, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->incrementFailureCount(I)V

    .line 314
    return-void
.end method

.method private incrementWifiMetricsTriggerCounts()V
    .locals 9

    .line 390
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiLastResortWatchdog"

    const-string v1, "incrementWifiMetricsTriggerCounts."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggers()V

    .line 392
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    .line 393
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogAvailableNetworksTotal(I)V

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "badAuth":I
    const/4 v1, 0x0

    .line 397
    .local v1, "badAssoc":I
    const/4 v2, 0x0

    .line 399
    .local v2, "badDhcp":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 400
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x7

    if-lt v5, v8, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    add-int/2addr v0, v5

    .line 401
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    if-lt v5, v8, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    add-int/2addr v1, v5

    .line 402
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    if-lt v5, v8, :cond_3

    move v6, v7

    nop

    :cond_3
    add-int/2addr v2, v6

    .line 403
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    goto :goto_0

    .line 404
    :cond_4
    if-lez v0, :cond_5

    .line 405
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadAuthenticationNetworksTotal(I)V

    .line 406
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadAuthentication()V

    .line 408
    :cond_5
    if-lez v1, :cond_6

    .line 409
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadAssociationNetworksTotal(I)V

    .line 410
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadAssociation()V

    .line 412
    :cond_6
    if-lez v2, :cond_7

    .line 413
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadDhcpNetworksTotal(I)V

    .line 414
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadDhcp()V

    .line 416
    :cond_7
    return-void
.end method

.method public static synthetic lambda$takeBugReportWithCurrentProbability$0(Lcom/android/server/wifi/WifiLastResortWatchdog;Ljava/lang/String;)V
    .locals 2
    .param p1, "bugDetail"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "Wifi watchdog triggered"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->takeBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private setWatchdogTriggerEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 446
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiLastResortWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatchdogTriggerEnabled: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    .line 448
    return-void
.end method

.method private takeBugReportWithCurrentProbability(Ljava/lang/String;)V
    .locals 4
    .param p1, "bugDetail"    # Ljava/lang/String;

    .line 270
    iget-wide v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mBugReportProbability:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiStateMachineLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiLastResortWatchdog$mIpWfGvGcRn_UMBeTeYZKeAS5FM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/-$$Lambda$WifiLastResortWatchdog$mIpWfGvGcRn_UMBeTeYZKeAS5FM;-><init>(Lcom/android/server/wifi/WifiLastResortWatchdog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method private updateFailureCountForNetwork(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .line 288
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "WifiLastResortWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFailureCountForNetwork: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    const-string v0, "any"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementSsidFailureCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementBssidFailureCount(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    :goto_0
    return-void
.end method


# virtual methods
.method public clearAllFailureCounts()V
    .locals 3

    .line 422
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiLastResortWatchdog"

    const-string v1, "clearAllFailureCounts."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 425
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 426
    .local v2, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->resetCounts()V

    .line 427
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    .end local v2    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 430
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 431
    .restart local v2    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->resetCounts()V

    .line 432
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    .end local v2    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    goto :goto_1

    .line 433
    :cond_2
    return-void
.end method

.method public connectedStateTransition(Z)V
    .locals 4
    .param p1, "isEntering"    # Z

    .line 242
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "WifiLastResortWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectedStateTransition: isEntering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    .line 246
    if-nez p1, :cond_1

    .line 247
    return-void

    .line 249
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogFixedWifi:Z

    if-eqz v0, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->checkIfAtleastOneNetworkHasEverConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "Wifi fixed after restart"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->takeBugReportWithCurrentProbability(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogSuccesses()V

    .line 255
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mTimeLastTrigger:J

    sub-long/2addr v0, v2

    .line 256
    .local v0, "durationMs":J
    iget-object v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWatchdogSuccessTimeDurationMs(J)V

    .line 259
    .end local v0    # "durationMs":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    .line 263
    return-void
.end method

.method protected enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 518
    if-lez p1, :cond_0

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 521
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    .line 523
    :goto_0
    return-void
.end method

.method public getFailureCount(Ljava/lang/String;I)I
    .locals 7
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    .line 494
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 495
    .local v0, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 496
    return v1

    .line 498
    :cond_0
    iget-object v2, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 499
    .local v2, "ssid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 500
    .local v3, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    .line 501
    const-string v4, "WifiLastResortWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFailureCount: Could not find SSID count for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return v1

    .line 504
    :cond_1
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 505
    .local v4, "failCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    packed-switch p2, :pswitch_data_0

    .line 513
    return v1

    .line 511
    :pswitch_0
    iget v1, v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    return v1

    .line 509
    :pswitch_1
    iget v1, v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    return v1

    .line 507
    :pswitch_2
    iget v1, v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getRecentAvailableNetworks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    return-object v0
.end method

.method public isOverFailureThreshold(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    const/4 v1, 0x2

    .line 480
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v2, :cond_1

    const/4 v1, 0x3

    .line 481
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_1
    :goto_0
    return v0
.end method

.method public noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .line 204
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "WifiLastResortWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteConnectionFailureAndTriggerIfNeeded: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateFailureCountForNetwork(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementWatchdogTotalConnectionFailureCountAfterTrigger()V

    .line 215
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogFixedWifi:Z

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->checkTriggerCondition()Z

    move-result v0

    .line 219
    .local v0, "isRestartNeeded":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 220
    const-string v2, "WifiLastResortWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRestartNeeded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    if-eqz v0, :cond_3

    .line 224
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    .line 225
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogFixedWifi:Z

    .line 226
    const-string v2, "WifiLastResortWatchdog"

    const-string v3, "Watchdog triggering recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mTimeLastTrigger:J

    .line 228
    iget-object v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/SelfRecovery;->trigger(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementWifiMetricsTriggerCounts()V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    .line 233
    :cond_3
    return v0
.end method

.method protected setBugReportProbability(D)V
    .locals 0
    .param p1, "newProbability"    # D
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 527
    iput-wide p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mBugReportProbability:D

    .line 528
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mWatchdogAllowedToTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, "\nmWifiIsConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "\nmRecentAvailableNetworks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 460
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    const-string v3, "\n "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Age: "

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v3, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    goto :goto_0

    .line 463
    :cond_0
    const-string v1, "\nmSsidFailureCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 466
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 467
    .local v3, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 468
    .local v4, "apCount":Ljava/lang/Integer;
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    .end local v3    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    .end local v4    # "apCount":Ljava/lang/Integer;
    goto :goto_1

    .line 471
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateAvailableNetworks(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;)V"
        }
    .end annotation

    .line 118
    .local p1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "WifiLastResortWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAvailableNetworks: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 124
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 125
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 126
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 127
    .local v5, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v5, :cond_1

    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 128
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 129
    .local v6, "bssid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "ssid":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v8, :cond_2

    .line 131
    const-string v8, "WifiLastResortWatchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    .line 135
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 136
    .local v8, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v8, :cond_4

    .line 138
    new-instance v9, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    invoke-direct {v9, v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    move-object v8, v9

    .line 139
    iput-object v7, v8, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 142
    iget-object v9, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    .line 143
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 144
    .local v9, "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v9, :cond_3

    .line 146
    new-instance v10, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    invoke-direct {v10, v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 146
    invoke-static {v10, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 148
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 152
    .local v10, "numberOfAps":Ljava/lang/Integer;
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 153
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 152
    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 155
    .end local v10    # "numberOfAps":Ljava/lang/Integer;
    :goto_1
    iget-object v10, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v9    # "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 159
    iput-object v4, v8, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    .line 162
    :cond_5
    const/4 v9, -0x1

    iput v9, v8, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    .line 163
    iget-object v9, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "ssid":Ljava/lang/String;
    .end local v8    # "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    goto/16 :goto_0

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    .line 169
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 172
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v3, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_7

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v4, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    goto :goto_5

    .line 176
    :cond_7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget-object v3, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 177
    .local v3, "ssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    .line 178
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 179
    .local v4, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_9

    .line 180
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 181
    .local v5, "apCount":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_8

    .line 182
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 183
    iget-object v6, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 185
    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v5    # "apCount":Ljava/lang/Integer;
    :goto_3
    goto :goto_4

    .line 188
    :cond_9
    const-string v5, "WifiLastResortWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAvailableNetworks: SSID to AP count mismatch for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 192
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :goto_5
    goto :goto_2

    .line 193
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "WifiLastResortWatchdog"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_b
    return-void
.end method
