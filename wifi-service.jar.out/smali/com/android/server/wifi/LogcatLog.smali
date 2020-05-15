.class Lcom/android/server/wifi/LogcatLog;
.super Ljava/lang/Object;
.source "LogcatLog.java"

# interfaces
.implements Lcom/android/server/wifi/WifiLog;


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/LogcatLog$RealLogMessage;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

.field private static final sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

.field private static volatile sVerboseLogging:Z


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    .line 38
    new-instance v0, Lcom/android/server/wifi/DummyLogMessage;

    invoke-direct {v0}, Lcom/android/server/wifi/DummyLogMessage;-><init>()V

    sput-object v0, Lcom/android/server/wifi/LogcatLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    .line 241
    const-string v0, "getNameOfCallingMethod()"

    const-string v1, "trace()"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/LogcatLog;->TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static enableVerboseLogging(I)V
    .locals 1
    .param p0, "verboseMode"    # I

    .line 45
    if-lez p0, :cond_0

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    .line 50
    :goto_0
    return-void
.end method

.method private getNameOfCallingMethod(I)Ljava/lang/String;
    .locals 4
    .param p1, "callerFramesToIgnore"    # I

    .line 245
    sget-object v0, Lcom/android/server/wifi/LogcatLog;->TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, p1

    .line 255
    .local v0, "frameNumOfInterest":I
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 257
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    :try_start_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "<unknown>"

    return-object v3
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public dump(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 93
    :cond_0
    sget-object v0, Lcom/android/server/wifi/LogcatLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public eC(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, p1}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public iC(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public tC(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 4
    .param p1, "format"    # Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, v3}, Lcom/android/server/wifi/LogcatLog;->getNameOfCallingMethod(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/wifi/LogcatLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

.method public trace(Ljava/lang/String;I)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "numFramesToIgnore"    # I

    .line 80
    sget-boolean v0, Lcom/android/server/wifi/LogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p2}, Lcom/android/server/wifi/LogcatLog;->getNameOfCallingMethod(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/android/server/wifi/LogcatLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public wC(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog;->mTag:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
