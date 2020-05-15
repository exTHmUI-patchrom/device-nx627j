.class public Landroid/telecom/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field private static final EVENTS_TO_CACHE:I = 0xa

.field private static final EVENTS_TO_CACHE_DEBUG:I = 0x14

.field private static final EXTENDED_LOGGING_DURATION_MILLIS:J = 0x1b7740L

.field private static final FORCE_LOGGING:Z = false

.field public static INFO:Z

.field public static TAG:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final USER_BUILD:Z

.field public static VERBOSE:Z

.field public static WARN:Z

.field private static sEventManager:Landroid/telecom/Logging/EventManager;

.field private static sIsUserExtendedLoggingEnabled:Z

.field private static sSessionManager:Landroid/telecom/Logging/SessionManager;

.field private static final sSingletonSync:Ljava/lang/Object;

.field private static sUserExtendedLoggingStopTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "TelecomFramework"

    sput-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    .line 53
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    .line 54
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    .line 55
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    .line 56
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    .line 59
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    sput-boolean v0, Landroid/telecom/Log;->USER_BUILD:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;)V
    .locals 2
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;

    .line 239
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public static addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .line 243
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public static varargs addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 248
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public static addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .locals 1
    .param p0, "p"    # Landroid/telecom/Logging/EventManager$TimedEventPair;

    .line 256
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V

    .line 257
    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 425
    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "sessionName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "sessionPostfix":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    :try_start_0
    array-length v5, p2

    if-nez v5, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 432
    :catch_0
    move-exception v5

    .line 433
    .local v5, "ife":Ljava/util/IllegalFormatException;
    sget-object v6, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    const-string v7, "Log: IllegalFormatException: formatString=\'%s\' numArgs=%d"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p1, v8, v3

    array-length v9, p2

    .line 434
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    .line 433
    invoke-static {v6, v5, v7, v8}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (An error occurred while formatting the message.)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "ife":Ljava/util/IllegalFormatException;
    goto :goto_3

    .line 431
    :cond_2
    :goto_1
    move-object v5, p1

    .line 436
    .local v5, "msg":Ljava/lang/String;
    :goto_2
    nop

    .line 435
    :goto_3
    nop

    .line 437
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s: %s%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v3

    aput-object v5, v8, v2

    aput-object v1, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static cancelSubsession(Landroid/telecom/Logging/Session;)V
    .locals 1
    .param p0, "subsession"    # Landroid/telecom/Logging/Session;

    .line 211
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    .line 212
    return-void
.end method

.method public static continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .locals 1
    .param p0, "subsession"    # Landroid/telecom/Logging/Session;
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .line 215
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static createSubsession()Landroid/telecom/Logging/Session;
    .locals 1

    .line 203
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 90
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 92
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 81
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 83
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method public static dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 262
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_0

    .line 264
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 266
    :cond_0
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :goto_0
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 279
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_0

    .line 281
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 283
    :cond_0
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 285
    :goto_0
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 147
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 141
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_0
    return-void
.end method

.method public static endSession()V
    .locals 1

    .line 219
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->endSession()V

    .line 220
    return-void
.end method

.method private static getEventManager()Landroid/telecom/Logging/EventManager;
    .locals 3

    .line 317
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v0, :cond_1

    .line 318
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Landroid/telecom/Logging/EventManager;

    sget-object v2, Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;->INSTANCE:Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;

    invoke-direct {v1, v2}, Landroid/telecom/Logging/EventManager;-><init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V

    sput-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    .line 321
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    monitor-exit v0

    return-object v1

    .line 323
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 325
    :cond_1
    :goto_0
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    return-object v0
.end method

.method public static getExternalSession()Landroid/telecom/Logging/Session$Info;
    .locals 1

    .line 207
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 420
    if-nez p0, :cond_0

    const-string v0, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 2

    .line 229
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-eqz v1, :cond_0

    .line 231
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Logging/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 233
    :cond_0
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSessionManager()Landroid/telecom/Logging/SessionManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 332
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v0, :cond_1

    .line 333
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Landroid/telecom/Logging/SessionManager;

    invoke-direct {v1}, Landroid/telecom/Logging/SessionManager;-><init>()V

    sput-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    .line 336
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    monitor-exit v0

    return-object v1

    .line 338
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 340
    :cond_1
    :goto_0
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 105
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 99
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .line 368
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static maybeDisableLogging()V
    .locals 4

    .line 357
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-nez v0, :cond_0

    .line 358
    return-void

    .line 361
    :cond_0
    sget-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 362
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 363
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 365
    :cond_1
    return-void
.end method

.method public static pii(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "pii"    # Ljava/lang/Object;

    .line 413
    if-eqz p0, :cond_1

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    const-string v0, "***"

    return-object v0

    .line 414
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "pii"    # Ljava/lang/Object;

    .line 372
    if-eqz p0, :cond_7

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 378
    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    .line 379
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "scheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "textToObfuscate":Ljava/lang/String;
    const-string/jumbo v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 387
    nop

    .line 387
    .local v5, "i":I
    :goto_0
    move v4, v5

    .line 387
    .end local v5    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 389
    .local v5, "c":C
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "*"

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .end local v5    # "c":C
    add-int/lit8 v5, v4, 0x1

    .line 387
    .end local v4    # "i":I
    .local v5, "i":I
    goto :goto_0

    .line 391
    .end local v5    # "i":I
    :cond_3
    const-string/jumbo v4, "sip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 392
    nop

    .line 392
    .restart local v5    # "i":I
    :goto_2
    move v4, v5

    .line 392
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 394
    .local v5, "c":C
    const/16 v6, 0x40

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4

    .line 395
    const/16 v5, 0x2a

    .line 397
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    .end local v5    # "c":C
    add-int/lit8 v5, v4, 0x1

    .line 392
    .end local v4    # "i":I
    .local v5, "i":I
    goto :goto_2

    .line 400
    .end local v5    # "i":I
    :cond_5
    invoke-static {p0}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "textToObfuscate":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 373
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .locals 1
    .param p0, "e"    # Landroid/telecom/Logging/EventManager$EventListener;

    .line 252
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V

    .line 253
    return-void
.end method

.method public static registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .locals 1
    .param p0, "l"    # Landroid/telecom/Logging/SessionManager$ISessionListener;

    .line 223
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V

    .line 224
    return-void
.end method

.method public static setIsExtendedLoggingEnabled(Z)V
    .locals 4
    .param p0, "isExtendedLoggingEnabled"    # Z

    .line 296
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-ne v0, p0, :cond_0

    .line 297
    return-void

    .line 300
    :cond_0
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v0, :cond_2

    .line 301
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz p0, :cond_1

    .line 302
    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    .line 301
    :goto_0
    invoke-virtual {v0, v1}, Landroid/telecom/Logging/EventManager;->changeEventCacheSize(I)V

    .line 305
    :cond_2
    sput-boolean p0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 306
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_3

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    goto :goto_1

    .line 310
    :cond_3
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 312
    :goto_1
    return-void
.end method

.method public static setSessionContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 182
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->setContext(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 344
    sput-object p0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 345
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    .line 346
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    .line 347
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    .line 348
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    .line 349
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    .line 350
    return-void
.end method

.method public static startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p1, "shortMethodName"    # Ljava/lang/String;

    .line 190
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Landroid/telecom/Logging/Session$Info;
    .param p1, "shortMethodName"    # Ljava/lang/String;
    .param p2, "callerIdentification"    # Ljava/lang/String;

    .line 199
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static startSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "shortMethodName"    # Ljava/lang/String;

    .line 186
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static startSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "shortMethodName"    # Ljava/lang/String;
    .param p1, "callerIdentification"    # Ljava/lang/String;

    .line 194
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 120
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 122
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 111
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 113
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_0
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 135
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 129
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 168
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 158
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 163
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 154
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-void
.end method
