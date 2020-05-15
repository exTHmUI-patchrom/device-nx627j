.class public Lcom/android/server/wifi/WakeupLock;
.super Ljava/lang/Object;
.source "WakeupLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;
    }
.end annotation


# static fields
.field static final CONSECUTIVE_MISSED_SCANS_REQUIRED_TO_EVICT:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_LOCK_TIME_MILLIS:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mIsInitialized:Z

.field private mLockTimestamp:J

.field private final mLockedNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumScans:I

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/android/server/wifi/WakeupLock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiWakeMetrics;Lcom/android/server/wifi/Clock;)V
    .locals 1
    .param p1, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "wifiWakeMetrics"    # Lcom/android/server/wifi/WifiWakeMetrics;
    .param p3, "clock"    # Lcom/android/server/wifi/Clock;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/android/server/wifi/WakeupLock;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 59
    iput-object p2, p0, Lcom/android/server/wifi/WakeupLock;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    .line 60
    iput-object p3, p0, Lcom/android/server/wifi/WakeupLock;->mClock:Lcom/android/server/wifi/Clock;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WakeupLock;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupLock;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WakeupLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupLock;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    return p1
.end method

.method private addToLock(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "networkList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing lock with networks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "hasChanged":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanResultMatchInfo;

    .line 156
    .local v2, "network":Lcom/android/server/wifi/ScanResultMatchInfo;
    iget-object v3, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    .line 160
    .end local v2    # "network":Lcom/android/server/wifi/ScanResultMatchInfo;
    :cond_1
    goto :goto_0

    .line 162
    :cond_2
    if-eqz v0, :cond_3

    .line 163
    iget-object v1, p0, Lcom/android/server/wifi/WakeupLock;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 167
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WakeupLock;->maybeSetInitializedByScans(I)V

    .line 168
    return-void
.end method

.method private maybeSetInitializedByScans(I)V
    .locals 4
    .param p1, "numScans"    # I

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 95
    .local v0, "shouldBeInitialized":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 96
    iput-boolean v1, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    .line 98
    sget-object v1, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock initialized by handled scans. Scans: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v1, p0, Lcom/android/server/wifi/WakeupLock;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_2

    .line 100
    sget-object v1, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State of lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WakeupLock;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    iget v2, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    iget-object v3, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics;->recordInitializeEvent(II)V

    .line 106
    :cond_3
    return-void
.end method

.method private maybeSetInitializedByTimeout(J)V
    .locals 6
    .param p1, "timestampMillis"    # J

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/WakeupLock;->mLockTimestamp:J

    sub-long v0, p1, v0

    .line 118
    .local v0, "elapsedTime":J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 120
    .local v2, "shouldBeInitialized":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 121
    iput-boolean v3, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    .line 123
    sget-object v3, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock initialized by timeout. Elapsed time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v3, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    if-nez v3, :cond_2

    .line 125
    sget-object v3, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    const-string v4, "Lock initialized with 0 handled scans!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wifi/WakeupLock;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_3

    .line 128
    sget-object v3, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State of lock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WakeupLock;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    iget v4, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    iget-object v5, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/WifiWakeMetrics;->recordInitializeEvent(II)V

    .line 134
    :cond_4
    return-void
.end method

.method private removeFromLock(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "networkList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filtering lock with networks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 185
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    .line 186
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/server/wifi/ScanResultMatchInfo;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 191
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/ScanResultMatchInfo;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    iget-boolean v3, p0, Lcom/android/server/wifi/WakeupLock;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_1

    .line 193
    sget-object v3, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found network in lock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanResultMatchInfo;

    iget-object v5, v5, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    .line 202
    sget-object v3, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed network from lock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanResultMatchInfo;

    iget-object v5, v5, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 204
    const/4 v0, 0x1

    .line 206
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/ScanResultMatchInfo;Ljava/lang/Integer;>;"
    :cond_3
    goto/16 :goto_0

    .line 208
    :cond_4
    if-eqz v0, :cond_5

    .line 209
    iget-object v2, p0, Lcom/android/server/wifi/WakeupLock;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 212
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupLock;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    sget-object v2, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    const-string v3, "Lock emptied. Recording unlock event."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/android/server/wifi/WakeupLock;->mWifiWakeMetrics:Lcom/android/server/wifi/WifiWakeMetrics;

    iget v3, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics;->recordUnlockEvent(I)V

    .line 216
    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 262
    const-string v0, "WakeupLock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScans: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locked networks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 267
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/ScanResultMatchInfo;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", scans to evict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/ScanResultMatchInfo;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/android/server/wifi/WakeupLock;->mVerboseLoggingEnabled:Z

    .line 274
    return-void
.end method

.method public getDataSource()Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;>;"
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WakeupLock$WakeupLockDataSource;-><init>(Lcom/android/server/wifi/WakeupLock;Lcom/android/server/wifi/WakeupLock$1;)V

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    return v0
.end method

.method public isUnlocked()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLock(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "scanResultList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WakeupLock;->mLockTimestamp:J

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    .line 73
    iput v0, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    .line 75
    iget-object v1, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanResultMatchInfo;

    .line 77
    .local v2, "scanResultMatchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    iget-object v3, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v2    # "scanResultMatchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    goto :goto_0

    .line 80
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WakeupLock;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock set. Number of networks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WakeupLock;->mLockedNetworks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/server/wifi/WakeupLock;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 83
    return-void
.end method

.method public update(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "networkList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupLock;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WakeupLock;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WakeupLock;->maybeSetInitializedByTimeout(J)V

    .line 240
    iget v0, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WakeupLock;->mNumScans:I

    .line 243
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupLock;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupLock;->removeFromLock(Ljava/util/Collection;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupLock;->addToLock(Ljava/util/Collection;)V

    .line 248
    :goto_0
    return-void
.end method
