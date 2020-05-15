.class public Lcom/android/server/wifi/hotspot2/AnqpCache;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# static fields
.field public static final CACHE_SWEEP_INTERVAL_MILLISECONDS:J = 0xea60L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mANQPCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;",
            "Lcom/android/server/wifi/hotspot2/ANQPData;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mLastSweep:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    .line 47
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/util/Map;)V
    .locals 2
    .param p1, "key"    # Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/Clock;Ljava/util/Map;)V

    .line 58
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last sweep "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ago."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

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

    .line 100
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public getEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;)Lcom/android/server/wifi/hotspot2/ANQPData;
    .locals 1
    .param p1, "key"    # Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    return-object v0
.end method

.method public sweep()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 77
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 78
    return-void

    .line 82
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "expiredKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;>;"
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 84
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    :cond_1
    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    .line 91
    .local v4, "key":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v4    # "key":Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    goto :goto_1

    .line 93
    :cond_3
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    .line 94
    return-void
.end method
