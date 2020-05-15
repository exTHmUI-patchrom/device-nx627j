.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;,
        Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;,
        Landroid/os/ServiceManager$Stats;
    }
.end annotation


# static fields
.field private static final GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field private static final SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetServiceAccumulatedCallCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sGetServiceAccumulatedUs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastSlowLogActualTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastSlowLogUptime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastStatsLogUptime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sOtherCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceManager:Landroid/os/IServiceManager;

.field public static final sStatLogger:Lcom/android/internal/util/StatLogger;

.field private static startToCacheBinder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/ServiceManager;->startToCacheBinder:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sOtherCache:Ljava/util/HashMap;

    .line 58
    const-string v0, "debug.servicemanager.slow_call_core_ms"

    .line 59
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    .line 65
    const-string v0, "debug.servicemanager.slow_call_ms"

    .line 66
    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 71
    const-string v0, "debug.servicemanager.log_calls_core"

    .line 72
    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    .line 77
    const-string v0, "debug.servicemanager.log_calls"

    .line 78
    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 101
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "getService()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

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
    sget-object v0, Landroid/os/ServiceManager;->sOtherCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 195
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 196
    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z

    .line 208
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 209
    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z
    .param p3, "dumpPriority"    # I

    .line 224
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 236
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 237
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 238
    return-object v0

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 242
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in checkService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .locals 1

    .line 106
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 112
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 139
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 140
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 141
    sget-object v1, Landroid/os/ServiceManager;->sOtherCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    return-object v0

    .line 148
    :cond_1
    const-wide/16 v1, 0x40

    :try_start_1
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 149
    .local v3, "foundServiceBinder":Landroid/os/IBinder;
    sget-boolean v4, Landroid/os/ServiceManager;->startToCacheBinder:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To cache service: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    new-instance v4, Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;

    invoke-direct {v4, p0}, Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;-><init>(Ljava/lang/String;)V

    .line 153
    .local v4, "removeCachedIBinderDeathRecepient":Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;
    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 154
    sget-object v5, Landroid/os/ServiceManager;->sOtherCache:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .end local v4    # "removeCachedIBinderDeathRecepient":Landroid/os/ServiceManager$RemoveIBinderDeathRecepient;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "ServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is dead accidentially, do not cache it in the binder cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    nop

    .line 162
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 160
    return-object v3

    .line 162
    .end local v3    # "foundServiceBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 166
    .end local v0    # "service":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in getService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 179
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 180
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 181
    return-object v0

    .line 183
    :cond_0
    new-instance v1, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v1, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 276
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/ServiceManager;->startToCacheBinder:Z

    .line 278
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3

    .line 255
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v1, 0x0

    return-object v1
.end method

.method private static rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 19
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    move-object/from16 v1, p0

    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 296
    .local v2, "start":J
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 298
    .local v4, "binder":Landroid/os/IBinder;
    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 300
    .local v6, "time":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 301
    .local v7, "myUid":I
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    .line 303
    .local v8, "isCore":Z
    if-eqz v8, :cond_0

    .line 304
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    goto :goto_0

    .line 305
    :cond_0
    sget-wide v9, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 307
    .local v9, "slowThreshold":J
    :goto_0
    sget-object v11, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 308
    :try_start_0
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v0, v6

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 309
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    .local v12, "nowUptime":J
    int-to-long v14, v6

    cmp-long v0, v14, v9

    const-wide/16 v14, 0x1388

    if-ltz v0, :cond_2

    .line 318
    :try_start_1
    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    add-long v16, v16, v14

    cmp-long v0, v12, v16

    if-gtz v0, :cond_1

    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    int-to-long v14, v6

    cmp-long v0, v16, v14

    if-gez v0, :cond_2

    .line 320
    :cond_1
    div-int/lit16 v0, v6, 0x3e8

    invoke-static {v0, v1}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    .line 322
    sput-wide v12, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    .line 323
    int-to-long v14, v6

    sput-wide v14, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    goto :goto_1

    .line 344
    .end local v12    # "nowUptime":J
    :catchall_0
    move-exception v0

    move/from16 v18, v6

    goto :goto_4

    .line 329
    .restart local v12    # "nowUptime":J
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 330
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 331
    :cond_3
    :try_start_2
    sget v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 333
    .local v0, "logInterval":I
    :goto_2
    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v14, v0, :cond_4

    sget-wide v14, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    const-wide/16 v16, 0x1388

    add-long v14, v14, v16

    cmp-long v14, v12, v14

    if-ltz v14, :cond_4

    .line 336
    sget v14, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    sget v15, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 v15, v15, 0x3e8

    sget-wide v16, Landroid/os/ServiceManager;->sLastStatsLogUptime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v18, v6

    sub-long v5, v12, v16

    .end local v6    # "time":I
    .local v18, "time":I
    long-to-int v5, v5

    :try_start_3
    invoke-static {v14, v15, v5}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    .line 340
    const/4 v5, 0x0

    sput v5, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 341
    sput v5, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 342
    sput-wide v12, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    .end local v0    # "logInterval":I
    .end local v12    # "nowUptime":J
    goto :goto_3

    .line 344
    .end local v18    # "time":I
    .restart local v6    # "time":I
    :cond_4
    move/from16 v18, v6

    .end local v6    # "time":I
    .restart local v18    # "time":I
    :goto_3
    monitor-exit v11

    .line 345
    return-object v4

    .line 344
    .end local v18    # "time":I
    .restart local v6    # "time":I
    :catchall_1
    move-exception v0

    move/from16 v18, v6

    .end local v6    # "time":I
    .restart local v18    # "time":I
    :goto_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method
