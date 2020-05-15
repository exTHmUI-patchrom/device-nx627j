.class public Landroid/os/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemService$State;
    }
.end annotation


# static fields
.field private static sPropertyLock:Ljava/lang/Object;

.field private static sStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/SystemService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/os/SystemService$1;

    invoke-direct {v0}, Landroid/os/SystemService$1;-><init>()V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 29
    sget-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getState(Ljava/lang/String;)Landroid/os/SystemService$State;
    .locals 3
    .param p0, "service"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init.svc."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "rawState":Ljava/lang/String;
    sget-object v1, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemService$State;

    .line 81
    .local v1, "state":Landroid/os/SystemService$State;
    if-eqz v1, :cond_0

    .line 82
    return-object v1

    .line 84
    :cond_0
    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    return-object v2
.end method

.method public static isRunning(Ljava/lang/String;)Z
    .locals 2
    .param p0, "service"    # Ljava/lang/String;

    .line 99
    sget-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStopped(Ljava/lang/String;)Z
    .locals 2
    .param p0, "service"    # Ljava/lang/String;

    .line 92
    sget-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static restart(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 72
    const-string v0, "ctl.restart"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-string v0, "ctl.start"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-string v0, "ctl.stop"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static varargs waitForAnyStopped([Ljava/lang/String;)V
    .locals 6
    .param p0, "services"    # [Ljava/lang/String;

    .line 133
    :goto_0
    sget-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 135
    .local v3, "service":Ljava/lang/String;
    sget-object v4, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {v3}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 134
    .end local v3    # "service":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_1
    :try_start_1
    sget-object v1, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_2

    .line 142
    :catch_0
    move-exception v1

    .line 144
    :goto_2
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    .locals 7
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "state"    # Landroid/os/SystemService$State;
    .param p2, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 109
    .local v0, "endMillis":J
    :goto_0
    sget-object v2, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v3

    .line 111
    .local v3, "currentState":Landroid/os/SystemService$State;
    invoke-virtual {p1, v3}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    monitor-exit v2

    return-void

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 121
    :try_start_1
    sget-object v4, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v4, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    goto :goto_1

    .line 122
    :catch_0
    move-exception v4

    .line 124
    .end local v3    # "currentState":Landroid/os/SystemService$State;
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 116
    .restart local v3    # "currentState":Landroid/os/SystemService$State;
    :cond_1
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " currently "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; waited "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    .end local v3    # "currentState":Landroid/os/SystemService$State;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
