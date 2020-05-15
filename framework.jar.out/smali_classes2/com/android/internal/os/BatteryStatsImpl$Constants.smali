.class public final Lcom/android/internal/os/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;
.source "BatteryStatsImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_BATTERY_LEVEL_COLLECTION_DELAY_MS:J = 0x493e0L

.field private static final DEFAULT_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J = 0x927c0L

.field private static final DEFAULT_KERNEL_UID_READERS_THROTTLE_TIME:J = 0x2710L

.field private static final DEFAULT_PROC_STATE_CPU_TIMES_READ_DELAY_MS:J = 0x1388L

.field private static final DEFAULT_TRACK_CPU_ACTIVE_CLUSTER_TIME:Z = true

.field private static final DEFAULT_TRACK_CPU_TIMES_BY_PROC_STATE:Z = true

.field private static final DEFAULT_UID_REMOVE_DELAY_MS:J = 0x493e0L

.field public static final KEY_BATTERY_LEVEL_COLLECTION_DELAY_MS:Ljava/lang/String; = "battery_level_collection_delay_ms"

.field public static final KEY_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:Ljava/lang/String; = "external_stats_collection_rate_limit_ms"

.field public static final KEY_KERNEL_UID_READERS_THROTTLE_TIME:Ljava/lang/String; = "kernel_uid_readers_throttle_time"

.field public static final KEY_PROC_STATE_CPU_TIMES_READ_DELAY_MS:Ljava/lang/String; = "proc_state_cpu_times_read_delay_ms"

.field public static final KEY_TRACK_CPU_ACTIVE_CLUSTER_TIME:Ljava/lang/String; = "track_cpu_active_cluster_time"

.field public static final KEY_TRACK_CPU_TIMES_BY_PROC_STATE:Ljava/lang/String; = "track_cpu_times_by_proc_state"

.field public static final KEY_UID_REMOVE_DELAY_MS:Ljava/lang/String; = "uid_remove_delay_ms"


# instance fields
.field public BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public KERNEL_UID_READERS_THROTTLE_TIME:J

.field public PROC_STATE_CPU_TIMES_READ_DELAY_MS:J

.field public TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public TRACK_CPU_TIMES_BY_PROC_STATE:Z

.field public UID_REMOVE_DELAY_MS:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 13316
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 13317
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 13303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_TIMES_BY_PROC_STATE:Z

    .line 13304
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 13305
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CPU_TIMES_READ_DELAY_MS:J

    .line 13306
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 13307
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 13308
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 13310
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 13314
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 13318
    return-void
.end method

.method private updateConstants()V
    .locals 7

    .line 13334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 13336
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "battery_stats_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13342
    goto :goto_0

    .line 13363
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 13338
    :catch_0
    move-exception v1

    .line 13341
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "BatteryStatsImpl"

    const-string v3, "Bad batterystats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13344
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_TIMES_BY_PROC_STATE:Z

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "track_cpu_times_by_proc_state"

    .line 13345
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 13344
    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateTrackCpuTimesByProcStateLocked(ZZ)V

    .line 13347
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_cpu_active_cluster_time"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 13349
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CPU_TIMES_READ_DELAY_MS:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "proc_state_cpu_times_read_delay_ms"

    const-wide/16 v5, 0x1388

    .line 13350
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 13349
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateProcStateCpuTimesReadDelayMs(JJ)V

    .line 13352
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "kernel_uid_readers_throttle_time"

    const-wide/16 v5, 0x2710

    .line 13353
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 13352
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    .line 13355
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "uid_remove_delay_ms"

    .line 13356
    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 13355
    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateUidRemoveDelay(J)V

    .line 13357
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "external_stats_collection_rate_limit_ms"

    const-wide/32 v5, 0x927c0

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 13360
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_level_collection_delay_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 13363
    monitor-exit v0

    .line 13364
    return-void

    .line 13363
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateKernelUidReadersThrottleTime(JJ)V
    .locals 3
    .param p1, "oldTimeMs"    # J
    .param p3, "newTimeMs"    # J

    .line 13388
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 13389
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 13390
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuTimeReader;->setThrottleInterval(J)V

    .line 13391
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->setThrottleInterval(J)V

    .line 13392
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->setThrottleInterval(J)V

    .line 13393
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 13394
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->setThrottleInterval(J)V

    .line 13396
    :cond_0
    return-void
.end method

.method private updateProcStateCpuTimesReadDelayMs(JJ)V
    .locals 3
    .param p1, "oldDelayMillis"    # J
    .param p3, "newDelayMillis"    # J

    .line 13379
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CPU_TIMES_READ_DELAY_MS:J

    .line 13380
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 13381
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$1402(Lcom/android/internal/os/BatteryStatsImpl;J)J

    .line 13382
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$1502(Lcom/android/internal/os/BatteryStatsImpl;J)J

    .line 13383
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$1802(Lcom/android/internal/os/BatteryStatsImpl;J)J

    .line 13385
    :cond_0
    return-void
.end method

.method private updateTrackCpuTimesByProcStateLocked(ZZ)V
    .locals 3
    .param p1, "wasEnabled"    # Z
    .param p2, "isEnabled"    # Z

    .line 13367
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_TIMES_BY_PROC_STATE:Z

    .line 13368
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 13369
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$1702(Lcom/android/internal/os/BatteryStatsImpl;Z)Z

    .line 13370
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$1300(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;

    .line 13372
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$1402(Lcom/android/internal/os/BatteryStatsImpl;J)J

    .line 13373
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$1502(Lcom/android/internal/os/BatteryStatsImpl;J)J

    .line 13374
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$1802(Lcom/android/internal/os/BatteryStatsImpl;J)J

    .line 13376
    :cond_0
    return-void
.end method

.method private updateUidRemoveDelay(J)V
    .locals 1
    .param p1, "newTimeMs"    # J

    .line 13399
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 13400
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    .line 13401
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 13404
    const-string/jumbo v0, "track_cpu_times_by_proc_state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13405
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_TIMES_BY_PROC_STATE:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 13406
    const-string/jumbo v0, "track_cpu_active_cluster_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13407
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 13408
    const-string/jumbo v0, "proc_state_cpu_times_read_delay_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13409
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CPU_TIMES_READ_DELAY_MS:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 13410
    const-string v0, "kernel_uid_readers_throttle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13411
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 13412
    const-string v0, "external_stats_collection_rate_limit_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13413
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 13414
    const-string v0, "battery_level_collection_delay_ms"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13415
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 13416
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 13330
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    .line 13331
    return-void
.end method

.method public startObserving(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 13321
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 13322
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_stats_constants"

    .line 13323
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 13322
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 13325
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    .line 13326
    return-void
.end method
