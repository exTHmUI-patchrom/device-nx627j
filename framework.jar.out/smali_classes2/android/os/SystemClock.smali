.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemClock"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static currentNetworkTimeClock()Ljava/time/Clock;
    .locals 2

    .line 309
    new-instance v0, Landroid/os/SystemClock$3;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$3;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static currentNetworkTimeMillis()J
    .locals 3

    .line 275
    const-string v0, "alarm"

    .line 276
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 277
    .local v0, "mgr":Landroid/app/IAlarmManager;
    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-interface {v0}, Landroid/app/IAlarmManager;->currentNetworkTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 280
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 281
    .local v1, "e":Landroid/os/ParcelableException;
    const-class v2, Ljava/time/DateTimeException;

    invoke-virtual {v1, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 282
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 287
    .end local v1    # "e":Landroid/os/ParcelableException;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static native currentThreadTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native currentThreadTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native currentTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native elapsedRealtime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static elapsedRealtimeClock()Ljava/time/Clock;
    .locals 2

    .line 213
    new-instance v0, Landroid/os/SystemClock$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$2;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native elapsedRealtimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static setCurrentTimeMillis(J)Z
    .locals 5
    .param p0, "millis"    # J

    .line 150
    const-string v0, "alarm"

    .line 151
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 152
    .local v0, "mgr":Landroid/app/IAlarmManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 157
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "SystemClock"

    const-string v4, "Unable to set RTC"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 158
    :catch_1
    move-exception v2

    .line 159
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SystemClock"

    const-string v4, "Unable to set RTC"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 164
    :goto_0
    return v1
.end method

.method public static sleep(J)V
    .locals 9
    .param p0, "ms"    # J

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, "start":J
    move-wide v2, p0

    .line 124
    .local v2, "duration":J
    const/4 v4, 0x0

    .line 127
    .local v4, "interrupted":Z
    :cond_0
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v5

    .line 130
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 132
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    add-long v5, v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 133
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 135
    if-eqz v4, :cond_1

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 141
    :cond_1
    return-void
.end method

.method public static uptimeClock()Ljava/time/Clock;
    .locals 2

    .line 190
    new-instance v0, Landroid/os/SystemClock$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$1;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native uptimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static uptimeMillisClock()Ljava/time/Clock;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeClock()Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method
