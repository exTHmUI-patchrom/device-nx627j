.class public Lcom/android/server/wifi/LastMileLogger;
.super Ljava/lang/Object;
.source "LastMileLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LastMileLogger"

.field private static final WIFI_EVENT_BUFFER_PATH:Ljava/lang/String; = "/sys/kernel/debug/tracing/instances/wifi/trace"

.field private static final WIFI_EVENT_ENABLE_PATH:Ljava/lang/String; = "/sys/kernel/debug/tracing/instances/wifi/tracing_on"

.field private static final WIFI_EVENT_RELEASE_PATH:Ljava/lang/String; = "/sys/kernel/debug/tracing/instances/wifi/free_buffer"


# instance fields
.field private final mEventBufferPath:Ljava/lang/String;

.field private final mEventEnablePath:Ljava/lang/String;

.field private final mEventReleasePath:Ljava/lang/String;

.field private mLastMileLogForLastFailure:[B

.field private mLastMileTraceHandle:Ljava/io/FileInputStream;

.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private mPendingConnectionId:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiInjector;)V
    .locals 3
    .param p1, "injector"    # Lcom/android/server/wifi/WifiInjector;

    .line 34
    const-string v0, "/sys/kernel/debug/tracing/instances/wifi/trace"

    const-string v1, "/sys/kernel/debug/tracing/instances/wifi/tracing_on"

    const-string v2, "/sys/kernel/debug/tracing/instances/wifi/free_buffer"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wifi/LastMileLogger;-><init>(Lcom/android/server/wifi/WifiInjector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiInjector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/wifi/WifiInjector;
    .param p2, "bufferPath"    # Ljava/lang/String;
    .param p3, "enablePath"    # Ljava/lang/String;
    .param p4, "releasePath"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    .line 40
    const-string v0, "LastMileLogger"

    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 41
    iput-object p2, p0, Lcom/android/server/wifi/LastMileLogger;->mEventBufferPath:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/server/wifi/LastMileLogger;->mEventEnablePath:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/android/server/wifi/LastMileLogger;->mEventReleasePath:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private disableTracing()V
    .locals 3

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mEventEnablePath:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Failed to stop event tracing: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;[B)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "lastMileLog"    # [B

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    array-length v2, p2

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    const-string v2, "-------------------------- %s ---------------------------\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    const-string v0, "--------------------------------------------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    return-void

    .line 167
    :cond_1
    :goto_0
    const-string v2, "No last mile log for \"%s\"\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 168
    return-void
.end method

.method private enableTracing()V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->ensureFailSafeIsArmed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "Failed to arm fail-safe."

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    .line 113
    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mEventEnablePath:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Failed to start event tracing: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private ensureFailSafeIsArmed()Z
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileTraceHandle:Ljava/io/FileInputStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 142
    return v1

    .line 157
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/wifi/LastMileLogger;->mEventReleasePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileTraceHandle:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Failed to open free_buffer pseudo-file: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 161
    const/4 v1, 0x0

    return v1
.end method

.method private readTrace()[B
    .locals 3

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mEventBufferPath:Ljava/lang/String;

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Failed to read event trace: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 136
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 89
    const-string v0, "Last failed last-mile log"

    iget-object v1, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileLogForLastFailure:[B

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/LastMileLogger;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    .line 90
    const-string v0, "Latest last-mile log"

    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->readTrace()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/LastMileLogger;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;[B)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileLogForLastFailure:[B

    .line 92
    return-void
.end method

.method public reportConnectionEvent(JB)V
    .locals 4
    .param p1, "connectionId"    # J
    .param p3, "event"    # B

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "Ignoring negative connection id: %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 54
    return-void

    .line 57
    :cond_0
    const-wide/16 v0, -0x1

    packed-switch p3, :pswitch_data_0

    .line 82
    return-void

    .line 67
    :pswitch_0
    iget-wide v2, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 68
    iput-wide v0, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->disableTracing()V

    .line 70
    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->readTrace()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/LastMileLogger;->mLastMileLogForLastFailure:[B

    .line 71
    return-void

    .line 79
    :cond_1
    return-void

    .line 63
    :pswitch_1
    iput-wide v0, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    .line 64
    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->disableTracing()V

    .line 65
    return-void

    .line 59
    :pswitch_2
    iput-wide p1, p0, Lcom/android/server/wifi/LastMileLogger;->mPendingConnectionId:J

    .line 60
    invoke-direct {p0}, Lcom/android/server/wifi/LastMileLogger;->enableTracing()V

    .line 61
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
