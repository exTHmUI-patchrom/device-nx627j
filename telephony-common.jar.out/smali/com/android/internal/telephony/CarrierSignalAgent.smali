.class public Lcom/android/internal/telephony/CarrierSignalAgent;
.super Landroid/os/Handler;
.source "CarrierSignalAgent.java"


# static fields
.field private static final CARRIER_SIGNAL_DELIMITER:Ljava/lang/String; = "\\s*,\\s*"

.field private static final COMPONENT_NAME_DELIMITER:Ljava/lang/String; = "\\s*:\\s*"

.field private static final DBG:Z = true

.field private static final EVENT_REGISTER_DEFAULT_NETWORK_AVAIL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NO_WAKE:Z = false

.field private static final VDBG:Z

.field private static final WAKE:Z = true


# instance fields
.field private mCachedNoWakeSignalConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedWakeSignalConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCarrierSignalList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultNetworkAvail:Z

.field private final mErrorLocalLog:Landroid/util/LocalLog;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    const-string v2, "com.android.internal.telephony.CARRIER_SIGNAL_REDIRECTED"

    const-string v3, "com.android.internal.telephony.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    const-string v4, "com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    const-string v5, "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCarrierSignalList:Ljava/util/Set;

    .line 105
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Landroid/util/LocalLog;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/CarrierSignalAgent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$1;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierSignalAgent;->loadCarrierConfig()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierSignalAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierSignalAgent;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierSignalAgent;->loadCarrierConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierSignalAgent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierSignalAgent;

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/CarrierSignalAgent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierSignalAgent;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    return p1
.end method

.method private broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "wakeup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 298
    .local p2, "receivers":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 299
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 300
    .local v2, "name":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 301
    .local v3, "signal":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 303
    const/high16 v4, 0x10000

    if-eqz p3, :cond_0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 304
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Carrier signal receivers are configured but unavailable: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 307
    return-void

    .line 309
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 310
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime signals shouldn\'t be configured in Manifest: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 313
    return-void

    .line 316
    :cond_1
    const-string v4, "subscription"

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    if-nez p3, :cond_2

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending signal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " to the carrier signal receiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_2

    .line 326
    :catch_0
    move-exception v4

    .line 327
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send broadcast failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 329
    .end local v2    # "name":Landroid/content/ComponentName;
    .end local v3    # "signal":Landroid/content/Intent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    goto/16 :goto_0

    .line 330
    :cond_4
    return-void
.end method

.method private loadCarrierConfig()V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 189
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 190
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 193
    :cond_0
    if-eqz v1, :cond_5

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v2

    .line 195
    :try_start_0
    const-string v3, "Loading carrier config: carrier_app_wake_signal_config"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 196
    const-string v3, "carrier_app_wake_signal_config"

    .line 197
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->parseAndCache([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 204
    .local v3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 205
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    sget-boolean v4, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v4, :cond_1

    const-string v4, "carrier config changed, reset receivers from old config"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 207
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CarrierActionAgent;->sendEmptyMessage(I)Z

    .line 210
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    .line 211
    .end local v3    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v3

    .line 214
    :try_start_1
    const-string v2, "Loading carrier config: carrier_app_no_wake_signal_config"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 216
    const-string v2, "carrier_app_no_wake_signal_config"

    .line 217
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->parseAndCache([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 218
    .local v2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 219
    invoke-interface {v2, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 220
    sget-boolean v4, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v4, :cond_3

    const-string v4, "carrier config changed, reset receivers from old config"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 221
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CarrierActionAgent;->sendEmptyMessage(I)Z

    .line 224
    :cond_4
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 225
    .end local v2    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 211
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 227
    :cond_5
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 357
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 366
    sget-object v0, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method private parseAndCache([Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .param p1, "configs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v0, "newCachedWakeSignalConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 239
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    .line 240
    .local v4, "config":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 241
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s*:\\s*"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "splitStr":[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v7, :cond_5

    .line 243
    aget-object v6, v5, v2

    .line 244
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 245
    .local v6, "componentName":Landroid/content/ComponentName;
    if-nez v6, :cond_0

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid component name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 247
    goto/16 :goto_3

    .line 249
    :cond_0
    const/4 v7, 0x1

    aget-object v7, v5, v7

    const-string v8, "\\s*,\\s*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "signals":[Ljava/lang/String;
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 251
    .local v10, "s":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCarrierSignalList:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 252
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid signal name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 253
    goto :goto_2

    .line 255
    :cond_1
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 256
    .local v11, "componentList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez v11, :cond_2

    .line 257
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    move-object v11, v12

    .line 258
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    sget-boolean v12, Lcom/android/internal/telephony/CarrierSignalAgent;->VDBG:Z

    if-eqz v12, :cond_3

    .line 262
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Add config {signal: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " componentName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/CarrierSignalAgent;->logv(Ljava/lang/String;)V

    .line 250
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "componentList":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 266
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "signals":[Ljava/lang/String;
    :cond_4
    goto :goto_3

    .line 267
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid config format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    .line 239
    .end local v4    # "config":Ljava/lang/String;
    .end local v5    # "splitStr":[Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 272
    :cond_7
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 370
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 371
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "mCachedWakeSignalConfigs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

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

    .line 374
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " componentName list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 378
    const-string v1, "mCachedNoWakeSignalConfigs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

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

    .line 381
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " componentName list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    goto :goto_1

    .line 383
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultNetworkAvail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v1, "error log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mErrorLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 391
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 137
    sget-object v1, Lcom/android/internal/telephony/CarrierSignalAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register default network exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 141
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 142
    .local v1, "connectivityMgr":Landroid/net/ConnectivityManager;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    new-instance v2, Lcom/android/internal/telephony/CarrierSignalAgent$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$2;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 168
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 169
    const-string v2, "Register default network"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 173
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mDefaultNetworkAvail:Z

    .line 175
    const-string v2, "unregister default network"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V

    .line 181
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "connectivityMgr":Landroid/net/ConnectivityManager;
    :cond_3
    :goto_0
    return-void
.end method

.method public hasRegisteredReceivers(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    .line 280
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 279
    :goto_1
    return v0
.end method

.method public notifyCarrierSignalReceivers(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedWakeSignalConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 343
    .local v1, "receiverSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V

    .line 346
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    monitor-enter v2

    .line 349
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedNoWakeSignalConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    .line 350
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->broadcast(Landroid/content/Intent;Ljava/util/Set;Z)V

    .line 353
    :cond_1
    monitor-exit v2

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 346
    .end local v1    # "receiverSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
