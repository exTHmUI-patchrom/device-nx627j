.class public Lcom/android/server/wifi/WifiWakeMetrics;
.super Ljava/lang/Object;
.source "WifiWakeMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiWakeMetrics$Event;,
        Lcom/android/server/wifi/WifiWakeMetrics$Session;
    }
.end annotation


# static fields
.field static final MAX_RECORDED_SESSIONS:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIgnoredStarts:I

.field private mIsInSession:Z

.field private final mLock:Ljava/lang/Object;

.field private final mSessions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/WifiWakeMetrics$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSessions:I

.field private mTotalWakeups:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    .line 44
    iput v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalSessions:I

    .line 45
    iput v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalWakeups:I

    .line 46
    iput v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIgnoredStarts:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
    .locals 4

    .line 164
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;-><init>()V

    .line 166
    .local v0, "proto":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalSessions:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numSessions:I

    .line 167
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalWakeups:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numWakeups:I

    .line 168
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIgnoredStarts:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->numIgnoredStarts:I

    .line 169
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;->sessions:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object v3

    aput-object v3, v2, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalSessions:I

    .line 210
    iput v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalWakeups:I

    .line 211
    iput v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIgnoredStarts:I

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 183
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    const-string v1, "-------WifiWake metrics-------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalSessions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalSessions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalWakeups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalWakeups:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIgnoredStarts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIgnoredStarts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Sessions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiWakeMetrics$Session;

    .line 191
    .local v2, "session":Lcom/android/server/wifi/WifiWakeMetrics$Session;
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->dump(Ljava/io/PrintWriter;)V

    .line 192
    .end local v2    # "session":Lcom/android/server/wifi/WifiWakeMetrics$Session;
    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    if-eqz v1, :cond_1

    .line 194
    const-string v1, "Current Session: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->dump(Ljava/io/PrintWriter;)V

    .line 197
    :cond_1
    const-string v1, "----end of WifiWake metrics----"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordIgnoredStart()V
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIgnoredStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIgnoredStarts:I

    .line 158
    return-void
.end method

.method public recordInitializeEvent(II)V
    .locals 4
    .param p1, "numScans"    # I
    .param p2, "numNetworks"    # I

    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    if-nez v1, :cond_0

    .line 76
    monitor-exit v0

    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 78
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->recordInitializeEvent(IIJ)V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordResetEvent(I)V
    .locals 4
    .param p1, "numScans"    # I

    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    if-nez v1, :cond_0

    .line 136
    monitor-exit v0

    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->recordResetEvent(IJ)V

    .line 141
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->hasWakeupTriggered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalWakeups:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalWakeups:I

    .line 145
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalSessions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mTotalSessions:I

    .line 146
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mSessions:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordStartEvent(I)V
    .locals 4
    .param p1, "numNetworks"    # I

    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics$Session;-><init>(IJ)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordUnlockEvent(I)V
    .locals 4
    .param p1, "numScans"    # I

    .line 95
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    if-nez v1, :cond_0

    .line 97
    monitor-exit v0

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->recordUnlockEvent(IJ)V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordWakeupEvent(I)V
    .locals 4
    .param p1, "numScans"    # I

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mIsInSession:Z

    if-nez v1, :cond_0

    .line 116
    monitor-exit v0

    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics;->mCurrentSession:Lcom/android/server/wifi/WifiWakeMetrics$Session;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/WifiWakeMetrics$Session;->recordWakeupEvent(IJ)V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
