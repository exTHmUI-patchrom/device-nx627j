.class public Landroid/telecom/Logging/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;,
        Landroid/telecom/Logging/SessionManager$ISessionListener;,
        Landroid/telecom/Logging/SessionManager$ICurrentThreadId;,
        Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;
    }
.end annotation


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_MS:J = 0x7530L

.field private static final LOGGING_TAG:Ljava/lang/String; = "Logging"

.field private static final SESSION_ID_ROLLOVER_THRESHOLD:J = 0x40000L

.field private static final TIMEOUTS_PREFIX:Ljava/lang/String; = "telecom."


# instance fields
.field public mCleanStaleSessions:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSessionCleanupHandler:Landroid/os/Handler;

.field private mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

.field private mSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/SessionManager$ISessionListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private sCodeEntryCounter:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v0, Landroid/telecom/Logging/-$$Lambda$SessionManager$VyH2gT1EjIvzDy_C9JfTT60CISM;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/-$$Lambda$SessionManager$VyH2gT1EjIvzDy_C9JfTT60CISM;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    .line 71
    sget-object v0, Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;->INSTANCE:Landroid/telecom/Logging/-$$Lambda$L5F_SL2jOCUETYvgdB36aGwY50E;

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    .line 74
    new-instance v0, Landroid/telecom/Logging/-$$Lambda$SessionManager$hhtZwTEbvO-fLNlAvB6Do9_2gW4;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/-$$Lambda$SessionManager$hhtZwTEbvO-fLNlAvB6Do9_2gW4;-><init>(Landroid/telecom/Logging/SessionManager;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    .line 104
    return-void
.end method

.method private declared-synchronized createSubsession(Z)Landroid/telecom/Logging/Session;
    .locals 11
    .param p1, "isStartedFromActiveSession"    # Z

    monitor-enter p0

    .line 206
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 207
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 208
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 209
    const-string v3, "Logging"

    const-string v4, "Log.createSubsession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 214
    :cond_0
    :try_start_1
    new-instance v10, Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getNextChildId()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v10

    move v8, p1

    invoke-direct/range {v3 .. v9}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    move-object v3, v10

    .line 217
    .local v3, "newSubsession":Landroid/telecom/Logging/Session;
    invoke-virtual {v1, v3}, Landroid/telecom/Logging/Session;->addChild(Landroid/telecom/Logging/Session;)V

    .line 218
    invoke-virtual {v3, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 220
    if-nez p1, :cond_1

    .line 221
    const-string v4, "Logging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE_SUBSESSION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 221
    invoke-static {v4, v5, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_1
    const-string v4, "Logging"

    const-string v5, "CREATE_SUBSESSION (Invisible subsession)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :goto_0
    monitor-exit p0

    return-object v3

    .line 205
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v3    # "newSubsession":Landroid/telecom/Logging/Session;
    .end local p1    # "isStartedFromActiveSession":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1
.end method

.method private endParentSessions(Landroid/telecom/Logging/Session;)V
    .locals 6
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    .line 326
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 330
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_2

    .line 331
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/telecom/Logging/Session;->removeChild(Landroid/telecom/Logging/Session;)V

    .line 335
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 338
    .local v1, "fullSessionTimeMs":J
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 340
    .end local v1    # "fullSessionTimeMs":J
    :cond_1
    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 346
    .restart local v1    # "fullSessionTimeMs":J
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 346
    invoke-static {v3, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-nez v3, :cond_3

    .line 349
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    .line 352
    .end local v1    # "fullSessionTimeMs":J
    :cond_3
    :goto_0
    return-void

    .line 327
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    :cond_4
    :goto_1
    return-void
.end method

.method private getBase64Encoding(I)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # I

    .line 385
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 386
    .local v1, "idByteArray":[B
    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 387
    .end local v1    # "idByteArray":[B
    .local v0, "idByteArray":[B
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCallingThreadId()I
    .locals 1

    .line 391
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ICurrentThreadId;->get()I

    move-result v0

    return v0
.end method

.method private getCleanupTimeout(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "telecom.stale_session_cleanup_timeout_millis"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized getNextSessionID()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 372
    :try_start_0
    iget v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 373
    .local v0, "nextId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x40000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 374
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->restartSessionCounter()V

    .line 375
    iget v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->getBase64Encoding(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 371
    .end local v0    # "nextId":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw v0
.end method

.method private getSessionCleanupTimeoutMs()J
    .locals 2

    .line 107
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$new$0(Landroid/telecom/Logging/SessionManager;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupStaleSessions(J)V

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/telecom/Logging/SessionManager;)J
    .locals 2

    .line 77
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 78
    const-wide/16 v0, 0x7530

    return-wide v0

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->getCleanupTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifySessionCompleteListeners(Ljava/lang/String;J)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "sessionTimeMs"    # J

    .line 355
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 356
    .local v1, "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    invoke-interface {v1, p1, p2, p3}, Landroid/telecom/Logging/SessionManager$ISessionListener;->sessionComplete(Ljava/lang/String;J)V

    .line 357
    .end local v1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method

.method private declared-synchronized resetStaleSessionTimer()V
    .locals 4

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw v0
.end method

.method private declared-synchronized restartSessionCounter()V
    .locals 1

    monitor-enter p0

    .line 381
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelSubsession(Landroid/telecom/Logging/Session;)V
    .locals 2
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;

    monitor-enter p0

    .line 253
    if-nez p1, :cond_0

    .line 254
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 258
    invoke-direct {p0, p1}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 252
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1
.end method

.method public declared-synchronized cleanupStaleSessions(J)V
    .locals 9
    .param p1, "timeoutMs"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_0
    const-string v0, "Stale Sessions Cleaned:\n"

    .line 397
    .local v0, "logMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 398
    .local v1, "isSessionsStale":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 403
    .local v2, "currentTimeMs":J
    iget-object v4, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 404
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 406
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    .line 407
    .local v6, "session":Landroid/telecom/Logging/Session;
    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v7

    sub-long v7, v2, v7

    cmp-long v7, v7, p1

    if-lez v7, :cond_0

    .line 408
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 410
    const/4 v1, 0x1

    .line 412
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;"
    .end local v6    # "session":Landroid/telecom/Logging/Session;
    :cond_0
    goto :goto_0

    .line 413
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telecom/Logging/Session;>;>;"
    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 414
    const-string v5, "Logging"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 416
    :cond_2
    const-string v5, "Logging"

    const-string v6, "No stale logging sessions needed to be cleaned..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :goto_1
    monitor-exit p0

    return-void

    .line 395
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v1    # "isSessionsStale":Z
    .end local v2    # "currentTimeMs":J
    .end local p1    # "timeoutMs":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1
.end method

.method public declared-synchronized continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .locals 5
    .param p1, "subsession"    # Landroid/telecom/Logging/Session;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 267
    if-nez p1, :cond_0

    .line 268
    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 271
    invoke-virtual {p1, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->setExecutionStartTimeMs(J)V

    .line 273
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    .line 274
    .local v0, "parentSession":Landroid/telecom/Logging/Session;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 275
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log.continueSession was called with no session active for method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 280
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    const-string v2, "Logging"

    const-string v3, "CONTINUE_SUBSESSION"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_2
    const-string v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONTINUE_SUBSESSION (Invisible Subsession) with Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    .end local v0    # "parentSession":Landroid/telecom/Logging/Session;
    .end local p1    # "subsession":Landroid/telecom/Logging/Session;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1
.end method

.method public createSubsession()Landroid/telecom/Logging/Session;
    .locals 1

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized endSession()V
    .locals 7

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 295
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 296
    .local v1, "completedSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 297
    const-string v3, "Logging"

    const-string v4, "Log.endSession was called with no session active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 301
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 302
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 303
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_1
    const-string v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END_SUBSESSION (Invisible Subsession) (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 306
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :goto_0
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 312
    .local v2, "parentSession":Landroid/telecom/Logging/Session;
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    .line 316
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 317
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :cond_2
    monitor-exit p0

    return-void

    .line 293
    .end local v0    # "threadId":I
    .end local v1    # "completedSession":Landroid/telecom/Logging/Session;
    .end local v2    # "parentSession":Landroid/telecom/Logging/Session;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw v0
.end method

.method public declared-synchronized getExternalSession()Landroid/telecom/Logging/Session$Info;
    .locals 5

    monitor-enter p0

    .line 236
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 237
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 238
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    if-nez v1, :cond_0

    .line 239
    const-string v2, "Logging"

    const-string v3, "Log.getExternalSession was called with no session active."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 244
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getInfo()Landroid/telecom/Logging/Session$Info;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 235
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 361
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    .line 362
    .local v0, "currentSession":Landroid/telecom/Logging/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public declared-synchronized registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/Logging/SessionManager$ISessionListener;

    monitor-enter p0

    .line 366
    if-eqz p1, :cond_0

    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 365
    .end local p1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1

    .line 369
    .restart local p0    # "this":Landroid/telecom/Logging/SessionManager;
    .restart local p1    # "l":Landroid/telecom/Logging/SessionManager$ISessionListener;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public declared-synchronized startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .locals 12
    .param p1, "sessionInfo"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;

    monitor-enter p0

    .line 165
    if-nez p1, :cond_0

    .line 166
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 170
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 171
    .local v1, "threadSession":Landroid/telecom/Logging/Session;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 174
    const-string v3, "Logging"

    const-string/jumbo v4, "trying to start an external session with a session already active."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 180
    :cond_1
    :try_start_1
    const-string v3, "Logging"

    const-string v4, "START_EXTERNAL_SESSION"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v2, Landroid/telecom/Logging/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 184
    .local v2, "externalSession":Landroid/telecom/Logging/Session;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telecom/Logging/Session;->setIsExternal(Z)V

    .line 187
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    .line 190
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v3

    .line 193
    .local v3, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v3, p2}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "threadId":I
    .end local v1    # "threadSession":Landroid/telecom/Logging/Session;
    .end local v2    # "externalSession":Landroid/telecom/Logging/Session;
    .end local v3    # "childSession":Landroid/telecom/Logging/Session;
    .end local p1    # "sessionInfo":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 164
    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1
.end method

.method public declared-synchronized startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p2, "shortMethodName"    # Ljava/lang/String;
    .param p3, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 126
    if-nez p1, :cond_0

    .line 127
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local p1    # "info":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    .end local p3    # "callerIdentification":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 129
    .restart local p1    # "info":Landroid/telecom/Logging/Session$Info;
    .restart local p2    # "shortMethodName":Ljava/lang/String;
    .restart local p3    # "callerIdentification":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    .end local p1    # "info":Landroid/telecom/Logging/Session$Info;
    .end local p2    # "shortMethodName":Ljava/lang/String;
    .end local p3    # "callerIdentification":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1
.end method

.method public declared-synchronized startSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "shortMethodName"    # Ljava/lang/String;
    .param p2, "callerIdentification"    # Ljava/lang/String;

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    .line 140
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    .line 141
    .local v0, "threadId":I
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    .line 144
    .local v1, "activeSession":Landroid/telecom/Logging/Session;
    if-eqz v1, :cond_0

    .line 145
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v2

    .line 146
    .local v2, "childSession":Landroid/telecom/Logging/Session;
    invoke-virtual {p0, v2, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 150
    .end local v2    # "childSession":Landroid/telecom/Logging/Session;
    :cond_0
    :try_start_1
    const-string v2, "Logging"

    const-string v3, "START_SESSION"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v2, Landroid/telecom/Logging/Session;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v5, v2

    move-object v7, p1

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 154
    .local v2, "newSession":Landroid/telecom/Logging/Session;
    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 138
    .end local v0    # "threadId":I
    .end local v1    # "activeSession":Landroid/telecom/Logging/Session;
    .end local v2    # "newSession":Landroid/telecom/Logging/Session;
    .end local p1    # "shortMethodName":Ljava/lang/String;
    .end local p2    # "callerIdentification":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/telecom/Logging/SessionManager;
    throw p1
.end method
