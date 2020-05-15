.class public Lcom/android/internal/telephony/ClientWakelockAccountant;
.super Ljava/lang/Object;
.source "ClientWakelockAccountant.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ClientWakelockAccountant: "


# instance fields
.field public mPendingRilWakelocks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/RilWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestStats:Landroid/telephony/ClientRequestStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/telephony/ClientRequestStats;

    invoke-direct {v0}, Landroid/telephony/ClientRequestStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v0, p1}, Landroid/telephony/ClientRequestStats;->setCallingPackage(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V
    .locals 5
    .param p1, "wlInfo"    # Lcom/android/internal/telephony/RilWakelockInfo;
    .param p2, "time"    # J

    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->setResponseTime(J)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ClientRequestStats;->addCompletedWakelockTime(J)V

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v1}, Landroid/telephony/ClientRequestStats;->incrementCompletedRequestsCount()V

    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result v2

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v3

    long-to-int v3, v3

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/telephony/ClientRequestStats;->updateRequestHistograms(II)V

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;
    .locals 5
    .param p1, "request"    # I
    .param p2, "token"    # I

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "result":Lcom/android/internal/telephony/RilWakelockInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 110
    .local v3, "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/RilWakelockInfo;->getTokenNumber()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 111
    invoke-virtual {v3}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 112
    move-object v0, v3

    .line 114
    .end local v3    # "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-nez v0, :cond_3

    .line 120
    const-string v1, "ClientWakelockAccountant: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for Request<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "> in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    return-object v0

    .line 118
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public changeConcurrentRequests(IJ)V
    .locals 3
    .param p1, "concurrentRequests"    # I
    .param p2, "time"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 70
    .local v2, "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->updateConcurrentRequests(IJ)V

    .line 71
    .end local v2    # "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    goto :goto_0

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingRequestCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startAttributingWakelock(IIIJ)V
    .locals 7
    .param p1, "request"    # I
    .param p2, "token"    # I
    .param p3, "concurrentRequests"    # I
    .param p4, "time"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 42
    new-instance v6, Lcom/android/internal/telephony/RilWakelockInfo;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/RilWakelockInfo;-><init>(IIIJ)V

    .line 43
    .local v0, "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopAllPendingRequests(J)V
    .locals 3
    .param p1, "time"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 60
    .local v2, "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    .line 61
    .end local v2    # "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopAttributingWakelock(IIJ)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "token"    # I
    .param p3, "time"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;

    move-result-object v0

    .line 51
    .local v0, "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    .line 54
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientWakelockAccountant{mRequestStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingRilWakelocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updatePendingRequestWakelockTime(J)J
    .locals 7
    .param p1, "uptime"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "totalPendingWakelockTime":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 94
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 95
    .local v4, "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    .line 96
    invoke-virtual {v4}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 97
    .end local v4    # "wlInfo":Lcom/android/internal/telephony/RilWakelockInfo;
    goto :goto_0

    .line 98
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/ClientRequestStats;->setPendingRequestsCount(J)V

    .line 101
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v3, v0, v1}, Landroid/telephony/ClientRequestStats;->setPendingRequestsWakelockTime(J)V

    .line 102
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    monitor-exit p0

    return-wide v0

    .line 102
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 98
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 91
    .end local v0    # "totalPendingWakelockTime":J
    .end local p1    # "uptime":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/ClientWakelockAccountant;
    throw p1
.end method
