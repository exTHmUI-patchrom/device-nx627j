.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    }
.end annotation


# static fields
.field public static final CALLING_UID_SELF:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SyncLogger"

.field private static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .locals 3

    const-class v0, Lcom/android/server/content/SyncLogger;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_3

    .line 71
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_1

    const-string v1, "1"

    const-string v2, "debug.synclog"

    .line 73
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SyncLogger"

    const/4 v2, 0x2

    .line 74
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 75
    .local v1, "enable":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 76
    new-instance v2, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    invoke-direct {v2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;-><init>()V

    sput-object v2, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    goto :goto_2

    .line 78
    :cond_2
    new-instance v2, Lcom/android/server/content/SyncLogger;

    invoke-direct {v2}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v2, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    .line 81
    .end local v1    # "enable":Z
    :cond_3
    :goto_2
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static logSafe(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .line 281
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;
    .locals 1
    .param p0, "asc"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 293
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 289
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "endPoint"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 285
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 106
    return-void
.end method

.method public enabled()Z
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 99
    const-string v0, ""

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # [Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public purgeOldLogs()V
    .locals 0

    .line 95
    return-void
.end method
