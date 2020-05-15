.class public Lcom/android/internal/telephony/ClientWakelockTracker;
.super Ljava/lang/Object;
.source "ClientWakelockTracker.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ClientWakelockTracker"


# instance fields
.field public mActiveClients:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field

.field public mClients:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    return-void
.end method

.method private getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .local v1, "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    goto :goto_0

    .line 94
    .end local v1    # "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/ClientWakelockAccountant;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v1    # "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    monitor-exit v0

    move-object v0, v1

    .line 98
    .end local v1    # "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    .local v0, "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    return-object v0

    .line 97
    .end local v0    # "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateConcurrentRequests(IJ)V
    .locals 3
    .param p1, "numRequestsInQueue"    # I
    .param p2, "time"    # J

    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 105
    .local v2, "cI":Lcom/android/internal/telephony/ClientWakelockAccountant;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->changeConcurrentRequests(IJ)V

    .line 106
    .end local v2    # "cI":Lcom/android/internal/telephony/ClientWakelockAccountant;
    goto :goto_0

    .line 107
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method dumpClientRequestTracker(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 123
    const-string v0, "-------mClients---------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 129
    :cond_0
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getClientRequestStats()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, "uptime":J
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 78
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 81
    .local v6, "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->updatePendingRequestWakelockTime(J)J

    .line 82
    new-instance v7, Landroid/telephony/ClientRequestStats;

    iget-object v8, v6, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-direct {v7, v8}, Landroid/telephony/ClientRequestStats;-><init>(Landroid/telephony/ClientRequestStats;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    goto :goto_0

    .line 84
    :cond_0
    monitor-exit v2

    move-object v2, v3

    .line 85
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    return-object v2

    .line 84
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isClientActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    .line 113
    .local v0, "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 117
    :cond_0
    monitor-exit v1

    .line 119
    const/4 v1, 0x0

    return v1

    .line 117
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startTracking(Ljava/lang/String;III)V
    .locals 9
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "token"    # I
    .param p4, "numRequestsInQueue"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v6

    .line 40
    .local v6, "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 41
    .local v7, "uptime":J
    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ClientWakelockAccountant;->startAttributingWakelock(IIIJ)V

    .line 42
    invoke-direct {p0, p4, v7, v8}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopTracking(Ljava/lang/String;III)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "token"    # I
    .param p4, "numRequestsInQueue"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    .line 53
    .local v0, "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 54
    .local v1, "uptime":J
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAttributingWakelock(IIJ)V

    .line 55
    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 60
    :cond_0
    :goto_0
    invoke-direct {p0, p4, v1, v2}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    .line 61
    return-void
.end method

.method public stopTrackingAll()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 66
    .local v0, "uptime":J
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 68
    .local v4, "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAllPendingRequests(J)V

    .line 69
    .end local v4    # "client":Lcom/android/internal/telephony/ClientWakelockAccountant;
    goto :goto_0

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 71
    monitor-exit v2

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
