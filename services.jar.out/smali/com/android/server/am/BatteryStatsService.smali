.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$LocalService;
    }
.end annotation


# static fields
.field private static final COMPLETED_PROPERTY:Ljava/lang/String; = "sys.boot_completed"

.field static final DBG:Z = false

.field private static final HOT_MAX_NOPM_TEMP:Ljava/lang/String; = "persist.power.logs.hot.temp"

.field private static final HOT_MAX_PM_TEMP:Ljava/lang/String; = "persist.power.logs.hot.pm.temp"

.field private static final HOT_MAX_SUMTIME:Ljava/lang/String; = "persist.power.logs.hot.sumtime"

.field private static final IS_SCECOND:Ljava/lang/String; = "persist.power.logs.scecond"

.field private static final LOGS_SWITCH:Ljava/lang/String; = "persist.power.logs.switch"

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x800

.field private static final MODEM_LOG:I = 0x2

.field private static final OFF_MAX_LEVEL:Ljava/lang/String; = "persist.power.logs.off.level"

.field private static final OFF_MAX_TIME:Ljava/lang/String; = "persist.power.logs.off.time"

.field private static final ON_MAX_LEVEL:Ljava/lang/String; = "persist.power.logs.on.level"

.field private static final ON_MAX_TIME:Ljava/lang/String; = "persist.power.logs.on.time"

.field private static final OVER_LIMIT_TIME:Ljava/lang/String; = "persist.power.logs.limit.time"

.field private static final PM_MAX_LEVEL:Ljava/lang/String; = "persist.power.pm.level"

.field private static final PM_MAX_TIME:Ljava/lang/String; = "persist.power.pm.limit.time"

.field private static final POWER_LOGS_ENABLE:Ljava/lang/String; = "persist.service.powersave.logs"

.field private static final POWER_LOGS_TYPE:Ljava/lang/String; = "persist.sys.nblog.type"

.field private static final POWER_PM_TYPE:Ljava/lang/String; = "persist.sys.power.pm.type"

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private gpsHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isPulled:Z

.field private final mContext:Landroid/content/Context;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field private mHotFirstTime:J

.field private mHotLimitTime:J

.field private mHotTimes:I

.field private mLastBatteryLevel:I

.field private mLastPlugType:I

.field private mPFirstLevel:I

.field private mPFirstTime:J

.field private mPLimitTime:J

.field private mScreenOn:Z

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field private mUtf16BufferStat:Ljava/nio/CharBuffer;

.field private mUtf8BufferStat:Ljava/nio/ByteBuffer;

.field private final mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

.field private offHasSend:Z

.field private offIsScecond:Z

.field private offLastTime:J

.field private offLimitTime:J

.field private offSumLevel:I

.field private offSumTime:J

.field private onHasSend:Z

.field private onLastTime:J

.field private onLimitTime:J

.field private onSumLevel:I

.field private onSumTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 178
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 112
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 114
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 115
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "?"

    .line 116
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 117
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    .line 118
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    .line 1196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    .line 1726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->offIsScecond:Z

    .line 1727
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    .line 1728
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    .line 1729
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    .line 1730
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    .line 1731
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->offLimitTime:J

    .line 1733
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    .line 1734
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    .line 1735
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    .line 1736
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    .line 1737
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->onLimitTime:J

    .line 1739
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    .line 1740
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    .line 1741
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    .line 1742
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstLevel:I

    .line 1743
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->mPLimitTime:J

    .line 1744
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->isPulled:Z

    .line 1746
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    .line 1747
    iput-wide v1, p0, Lcom/android/server/am/BatteryStatsService;->mHotLimitTime:J

    .line 1748
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    .line 1749
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mScreenOn:Z

    .line 180
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 181
    new-instance v1, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 191
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    invoke-direct {v1, p2, p3, p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 192
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 193
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 196
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v2, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 197
    return-void
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .line 96
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryStatsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static awaitUninterruptibly(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 229
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 1340
    add-int/lit8 p2, p2, 0x1

    .line 1341
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v2, "--enable"

    goto :goto_0

    :cond_0
    const-string v2, "--disable"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1344
    return v1

    .line 1346
    :cond_1
    const-string v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1350
    :cond_2
    const-string/jumbo v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 1353
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1354
    :cond_3
    const-string/jumbo v0, "pretend-screen-off"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1356
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 1357
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1359
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1361
    return v1

    .line 1347
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1348
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 1349
    monitor-exit v0

    .line 1363
    :goto_2
    return p2

    .line 1349
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method

.method private dumpCpuStats(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1334
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 1336
    monitor-exit v0

    .line 1337
    return-void

    .line 1336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1298
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    return-void
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1328
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1329
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 1330
    monitor-exit v0

    .line 1331
    return-void

    .line 1330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
.end method

.method private native getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private getProperty(Ljava/lang/String;I)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 1959
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1960
    .local v0, "value":I
    const-string v1, "BatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logs property name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return v0
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .line 272
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v0

    .line 275
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 276
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 277
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v1
.end method

.method private native getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private hotChange(IIIZ)Z
    .locals 17
    .param p1, "level"    # I
    .param p2, "temp"    # I
    .param p3, "plugType"    # I
    .param p4, "isScreenOn"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 1794
    const/4 v3, 0x0

    .line 1795
    .local v3, "chargingHot":Z
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-nez p4, :cond_0

    .line 1796
    iput-wide v5, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    .line 1797
    iput v4, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    .line 1798
    return v3

    .line 1800
    :cond_0
    iget v7, v0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    if-eq v7, v2, :cond_1

    iget-wide v7, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_1

    .line 1801
    iput-wide v5, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    .line 1802
    iput v4, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    .line 1803
    return v3

    .line 1805
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1806
    .local v7, "currentTime":J
    iget-wide v9, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    cmp-long v9, v9, v5

    if-nez v9, :cond_2

    .line 1807
    iput-wide v7, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    .line 1808
    return v3

    .line 1810
    :cond_2
    iget-wide v9, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    sub-long v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 1811
    .local v9, "sumTime":J
    const/4 v11, 0x0

    .line 1812
    .local v11, "maxTemp":I
    const-string/jumbo v12, "persist.power.logs.hot.pm.temp"

    const/16 v13, 0x1a4

    invoke-direct {v0, v12, v13}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v12

    .line 1813
    .local v12, "pmTemp":I
    const-string/jumbo v13, "persist.power.logs.hot.temp"

    const/16 v14, 0x186

    invoke-direct {v0, v13, v14}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v13

    .line 1814
    .local v13, "nopmTemp":I
    if-eqz v2, :cond_3

    .line 1815
    move v11, v12

    goto :goto_0

    .line 1817
    :cond_3
    move v11, v13

    .line 1819
    :goto_0
    if-le v1, v11, :cond_6

    .line 1820
    iget v14, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    .line 1821
    const-string/jumbo v14, "persist.power.logs.hot.sumtime"

    const/16 v4, 0xa

    invoke-direct {v0, v14, v4}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v5, v4

    .line 1822
    .local v5, "hotMaxTime":J
    const-string v4, "BatteryStatsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v3

    const-string v3, "[hot] plugType="

    .line 1822
    .end local v3    # "chargingHot":Z
    .local v15, "chargingHot":Z
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",level="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",hotSumTime="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",temp="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mHotTimes="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    cmp-long v3, v9, v5

    if-lez v3, :cond_4

    iget v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_4

    iget-wide v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotLimitTime:J

    const-string/jumbo v14, "persist.power.pm.limit.time"

    invoke-direct {v0, v3, v4, v14}, Lcom/android/server/am/BatteryStatsService;->isTime2Send(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1824
    const-string v3, "BatteryStatsService"

    const-string v4, "[hot] send success"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    .line 1826
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    .line 1827
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotLimitTime:J

    .line 1828
    const-string/jumbo v3, "persist.sys.power.pm.type"

    const-string v4, "hot"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v3, "hot"

    invoke-direct {v0, v3}, Lcom/android/server/am/BatteryStatsService;->sendLogBroadcast(Ljava/lang/String;)V

    .line 1831
    :cond_4
    if-eqz v2, :cond_5

    .line 1832
    const/4 v3, 0x1

    .line 1832
    .end local v5    # "hotMaxTime":J
    .end local v15    # "chargingHot":Z
    .restart local v3    # "chargingHot":Z
    goto :goto_1

    .line 1834
    .end local v3    # "chargingHot":Z
    .restart local v15    # "chargingHot":Z
    :cond_5
    move v3, v15

    .line 1838
    .end local v15    # "chargingHot":Z
    .restart local v3    # "chargingHot":Z
    :goto_1
    move v15, v3

    goto :goto_2

    .line 1835
    :cond_6
    move v15, v3

    .line 1835
    .end local v3    # "chargingHot":Z
    .restart local v15    # "chargingHot":Z
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotFirstTime:J

    .line 1836
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/am/BatteryStatsService;->mHotTimes:I

    .line 1838
    :goto_2
    return v15
.end method

.method private isTime2Send(JLjava/lang/String;)Z
    .locals 6
    .param p1, "limitTime"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 1965
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1966
    .local v0, "maxSendTime":J
    const/16 v2, 0x168

    invoke-direct {p0, p3, v2}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 1967
    .local v2, "overLimitTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 1970
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 1968
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4
.end method

.method public static synthetic lambda$setBatteryState$0(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V
    .locals 12
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I

    move-object v1, p0

    .line 1165
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1166
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1168
    monitor-exit v2

    .line 1169
    return-void

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic lambda$setBatteryState$1(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V
    .locals 21
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I

    move-object/from16 v11, p0

    .line 1148
    iget-object v1, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1149
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    .line 1150
    .local v0, "onBattery":Z
    iget-object v2, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1153
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p1

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1155
    monitor-exit v1

    return-void

    .line 1157
    .end local v0    # "onBattery":Z
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v1, "battery-state"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1164
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v12, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;

    move-object v1, v12

    move-object v2, v11

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v0, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1170
    return-void

    .line 1157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private offReset()V
    .locals 2

    .line 1945
    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "sendIntent offReset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    .line 1947
    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    .line 1948
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    .line 1949
    return-void
.end method

.method private offScreenChange(I)V
    .locals 8
    .param p1, "level"    # I

    .line 1887
    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1888
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1889
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    goto/16 :goto_0

    .line 1891
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    .line 1892
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    .line 1893
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntent offSumTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",offSumLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",offpercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    iget v4, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",offHasSend ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const-string/jumbo v0, "persist.power.logs.off.time"

    const/16 v1, 0xf0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 1896
    .local v0, "offMaxTime":J
    const-string/jumbo v2, "persist.power.logs.off.level"

    const/16 v3, 0xa

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v2

    .line 1897
    .local v2, "offMaxLevel":I
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    if-ge v3, v2, :cond_2

    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_4

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->offSumTime:J

    iget v5, p0, Lcom/android/server/am/BatteryStatsService;->offSumLevel:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    int-to-long v5, v2

    div-long v5, v0, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 1899
    :cond_2
    const-string/jumbo v3, "persist.power.logs.scecond"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v3

    .line 1900
    .local v3, "isScecond":I
    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-boolean v5, p0, Lcom/android/server/am/BatteryStatsService;->offIsScecond:Z

    if-nez v5, :cond_3

    .line 1901
    iput-boolean v4, p0, Lcom/android/server/am/BatteryStatsService;->offIsScecond:Z

    .line 1902
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1903
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->offLastTime:J

    .line 1904
    const-string v4, "BatteryStatsService"

    const-string/jumbo v5, "sendIntent first return"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return-void

    .line 1907
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    if-nez v5, :cond_4

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService;->offLimitTime:J

    const-string/jumbo v7, "persist.power.logs.limit.time"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/BatteryStatsService;->isTime2Send(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1908
    const-string v5, "BatteryStatsService"

    const-string/jumbo v6, "sendIntent offsend success"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/BatteryStatsService;->offLimitTime:J

    .line 1910
    iput-boolean v4, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    .line 1911
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1912
    const-string/jumbo v4, "persist.sys.power.pm.type"

    const-string/jumbo v5, "off"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    const-string/jumbo v4, "off"

    invoke-direct {p0, v4}, Lcom/android/server/am/BatteryStatsService;->sendLogBroadcast(Ljava/lang/String;)V

    .line 1917
    .end local v0    # "offMaxTime":J
    .end local v2    # "offMaxLevel":I
    .end local v3    # "isScecond":I
    :cond_4
    :goto_0
    return-void
.end method

.method private onReset()V
    .locals 2

    .line 1952
    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "sendIntent onReset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    .line 1954
    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    .line 1955
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    .line 1956
    return-void
.end method

.method private onScreenChange(I)V
    .locals 7
    .param p1, "level"    # I

    .line 1920
    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1921
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1922
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    goto/16 :goto_0

    .line 1924
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onLastTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    .line 1925
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    .line 1926
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntent onSumTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",onSumLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",onpercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    iget v4, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",onHasSend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const-string/jumbo v0, "persist.power.logs.on.time"

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 1929
    .local v0, "onMaxTime":J
    const-string/jumbo v2, "persist.power.logs.on.level"

    const/16 v3, 0xa

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v2

    .line 1930
    .local v2, "onMaxLevel":I
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    if-ge v3, v2, :cond_2

    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_3

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->onSumTime:J

    iget v5, p0, Lcom/android/server/am/BatteryStatsService;->onSumLevel:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    int-to-long v5, v2

    div-long v5, v0, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 1932
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->onLimitTime:J

    const-string/jumbo v5, "persist.power.logs.limit.time"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->isTime2Send(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1933
    const-string v3, "BatteryStatsService"

    const-string/jumbo v4, "sendIntent onsend success"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/BatteryStatsService;->onLimitTime:J

    .line 1935
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    .line 1936
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1937
    const-string/jumbo v3, "persist.sys.power.pm.type"

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string/jumbo v3, "on"

    invoke-direct {p0, v3}, Lcom/android/server/am/BatteryStatsService;->sendLogBroadcast(Ljava/lang/String;)V

    .line 1942
    .end local v0    # "onMaxTime":J
    .end local v2    # "onMaxLevel":I
    :cond_3
    :goto_0
    return-void
.end method

.method private static onlyCaller([I)Z
    .locals 5
    .param p0, "requestUids"    # [I

    .line 1683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1684
    .local v0, "caller":I
    array-length v1, p0

    .line 1685
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1686
    aget v4, p0, v3

    if-eq v4, v0, :cond_0

    .line 1687
    return v2

    .line 1685
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1690
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private pMChange(II)V
    .locals 12
    .param p1, "level"    # I
    .param p2, "plugType"    # I

    .line 1842
    const-wide/16 v0, 0x0

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 1843
    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    .line 1844
    return-void

    .line 1846
    :cond_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    .line 1847
    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    .line 1848
    return-void

    .line 1850
    :cond_1
    if-ne p2, v2, :cond_2

    iget v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    if-nez v3, :cond_2

    .line 1851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    .line 1852
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstLevel:I

    .line 1853
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pm] first plugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return-void

    .line 1856
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/BatteryStatsService;->isPulled:Z

    .line 1857
    if-nez p2, :cond_3

    iget v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    if-ne v3, v2, :cond_3

    .line 1858
    iput-boolean v2, p0, Lcom/android/server/am/BatteryStatsService;->isPulled:Z

    .line 1860
    :cond_3
    if-ne p2, v2, :cond_4

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/am/BatteryStatsService;->isPulled:Z

    if-eqz v2, :cond_9

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_9

    .line 1861
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1862
    .local v2, "pmSumTime":J
    iget v4, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstLevel:I

    sub-int v4, p1, v4

    .line 1863
    .local v4, "pmSumLevel":I
    const-string v5, "BatteryStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[pm] plugType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",pmSumTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",pmSumLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const-wide/32 v5, 0x36ee80

    .line 1865
    .local v5, "oneHour":J
    cmp-long v7, v2, v5

    if-lez v7, :cond_8

    .line 1866
    const-string/jumbo v7, "persist.power.pm.level"

    const/16 v8, 0xc

    invoke-direct {p0, v7, v8}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v7

    .line 1867
    .local v7, "pmMaxLevel":I
    if-lt v4, v7, :cond_7

    int-to-long v8, v4

    div-long v8, v2, v8

    int-to-long v10, v7

    div-long v10, v5, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    goto :goto_0

    .line 1876
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    .line 1877
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstLevel:I

    .line 1877
    .end local v7    # "pmMaxLevel":I
    goto :goto_1

    .line 1868
    .restart local v7    # "pmMaxLevel":I
    :cond_7
    :goto_0
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService;->mPLimitTime:J

    const-string/jumbo v10, "persist.power.pm.limit.time"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/am/BatteryStatsService;->isTime2Send(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1869
    const-string v8, "BatteryStatsService"

    const-string v9, "[pm] send success"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    .line 1871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/BatteryStatsService;->mPLimitTime:J

    .line 1872
    const-string/jumbo v8, "persist.sys.power.pm.type"

    const-string/jumbo v9, "pm"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string/jumbo v8, "pm"

    invoke-direct {p0, v8}, Lcom/android/server/am/BatteryStatsService;->sendLogBroadcast(Ljava/lang/String;)V

    .line 1880
    .end local v7    # "pmMaxLevel":I
    :cond_8
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/am/BatteryStatsService;->isPulled:Z

    if-eqz v7, :cond_9

    .line 1881
    iput-wide v0, p0, Lcom/android/server/am/BatteryStatsService;->mPFirstTime:J

    .line 1884
    .end local v2    # "pmSumTime":J
    .end local v4    # "pmSumLevel":I
    .end local v5    # "oneHour":J
    :cond_9
    return-void
.end method

.method private sendIntentByLevel(III)V
    .locals 8
    .param p1, "plugType"    # I
    .param p2, "level"    # I
    .param p3, "temp"    # I

    .line 1752
    const-string/jumbo v0, "persist.service.powersave.logs"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1753
    .local v0, "enable":I
    const-string/jumbo v2, "persist.sys.nblog.type"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1754
    .local v2, "type":I
    if-ne v0, v3, :cond_0

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 1755
    const-string v1, "BatteryStatsService"

    const-string/jumbo v3, "sendIntent modem log"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    return-void

    .line 1758
    :cond_0
    const-string/jumbo v4, "sys.boot_completed"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1759
    const-string/jumbo v4, "persist.power.logs.switch"

    invoke-direct {p0, v4, v1}, Lcom/android/server/am/BatteryStatsService;->getProperty(Ljava/lang/String;I)I

    move-result v4

    .line 1760
    .local v4, "logSwitch":I
    if-nez v4, :cond_1

    return-void

    .line 1761
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/am/BatteryStatsService;->mScreenOn:Z

    .line 1762
    .local v5, "isScreenOn":Z
    iget v6, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-ne v6, p2, :cond_2

    iget v6, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    if-eq v6, p1, :cond_9

    .line 1763
    :cond_2
    iget v6, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-eq v6, p2, :cond_6

    iget v6, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-le v6, p2, :cond_6

    .line 1764
    const-string v1, "BatteryStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendIntent  screen on:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",logSwitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    if-eqz v5, :cond_4

    .line 1766
    if-eq v4, v3, :cond_3

    const/4 v1, 0x3

    if-ne v4, v1, :cond_9

    .line 1767
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1768
    invoke-direct {p0, p2}, Lcom/android/server/am/BatteryStatsService;->onScreenChange(I)V

    goto :goto_0

    .line 1771
    :cond_4
    if-eq v4, v3, :cond_5

    const/4 v1, 0x2

    if-ne v4, v1, :cond_9

    .line 1772
    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1773
    invoke-direct {p0, p2}, Lcom/android/server/am/BatteryStatsService;->offScreenChange(I)V

    goto :goto_0

    .line 1776
    :cond_6
    iget v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-eq v3, p2, :cond_7

    iget v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    if-lt v3, p2, :cond_8

    :cond_7
    if-eqz p1, :cond_9

    iget v3, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    if-nez v3, :cond_9

    .line 1778
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->offHasSend:Z

    .line 1779
    iput-boolean v1, p0, Lcom/android/server/am/BatteryStatsService;->onHasSend:Z

    .line 1780
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 1781
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    .line 1785
    :cond_9
    :goto_0
    invoke-direct {p0, p2, p3, p1, v5}, Lcom/android/server/am/BatteryStatsService;->hotChange(IIIZ)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1786
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/BatteryStatsService;->pMChange(II)V

    .line 1788
    :cond_a
    iput p2, p0, Lcom/android/server/am/BatteryStatsService;->mLastBatteryLevel:I

    .line 1789
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPlugType:I

    .line 1791
    .end local v4    # "logSwitch":I
    .end local v5    # "isScreenOn":Z
    :cond_b
    return-void
.end method

.method private sendLogBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1974
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    .line 1975
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1992
    return-void
.end method

.method private shouldCollectExternalStats()Z
    .locals 4

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1676
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1675
    :goto_0
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 240
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    .line 241
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 333
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 335
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeBatteryTimeRemaining()J
    .locals 5

    .line 428
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 430
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    monitor-exit v0

    return-wide v3

    .line 431
    .end local v1    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeChargeTimeRemaining()J
    .locals 5

    .line 435
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 437
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    monitor-exit v0

    return-wide v3

    .line 438
    .end local v1    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    .line 1369
    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "BatteryStatsService"

    invoke-static {v0, v2, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1371
    :cond_0
    const/4 v0, 0x0

    .line 1372
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 1373
    .local v2, "useCheckinFormat":Z
    const/4 v3, 0x0

    .line 1374
    .local v3, "toProto":Z
    const/4 v4, 0x0

    .line 1375
    .local v4, "isRealCheckin":Z
    const/4 v5, 0x0

    .line 1376
    .local v5, "noOutput":Z
    const/4 v6, 0x0

    .line 1377
    .local v6, "writeData":Z
    const-wide/16 v7, -0x1

    .line 1378
    .local v7, "historyStart":J
    const/4 v11, -0x1

    .line 1379
    .local v11, "reqUid":I
    if-eqz v10, :cond_19

    .line 1380
    move-wide v14, v7

    move v7, v6

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "flags":I
    .local v3, "useCheckinFormat":Z
    .local v4, "toProto":Z
    .local v6, "isRealCheckin":Z
    .local v7, "writeData":Z
    .local v14, "historyStart":J
    :goto_0
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    array-length v0, v10

    if-ge v8, v0, :cond_18

    .line 1381
    aget-object v13, v10, v8

    .line 1382
    .local v13, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1383
    const/4 v3, 0x1

    .line 1384
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1385
    :cond_1
    const-string v0, "--history"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_3

    .line 1387
    :cond_2
    const-string v0, "--history-start"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1388
    or-int/lit8 v2, v2, 0x8

    .line 1389
    add-int/lit8 v8, v8, 0x1

    .line 1390
    array-length v0, v10

    if-lt v8, v0, :cond_3

    .line 1391
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1393
    return-void

    .line 1395
    :cond_3
    aget-object v0, v10, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1396
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 1397
    :cond_4
    const-string v0, "-c"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1398
    const/4 v3, 0x1

    .line 1399
    or-int/lit8 v2, v2, 0x10

    goto/16 :goto_3

    .line 1400
    :cond_5
    const-string v0, "--proto"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1401
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 1402
    :cond_6
    const-string v0, "--charged"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1403
    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_3

    .line 1404
    :cond_7
    const-string v0, "--daily"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1405
    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_3

    .line 1406
    :cond_8
    const-string v0, "--reset"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1407
    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 1408
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1409
    const-string v0, "Battery stats reset."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    const/4 v5, 0x1

    .line 1411
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v12, "dump"

    move/from16 v19, v3

    const/16 v3, 0x1f

    invoke-virtual {v0, v12, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1380
    .end local v13    # "arg":Ljava/lang/String;
    :goto_1
    move/from16 v3, v19

    goto/16 :goto_3

    .line 1411
    .restart local v13    # "arg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move/from16 v19, v3

    .end local v3    # "useCheckinFormat":Z
    .local v19, "useCheckinFormat":Z
    :goto_2
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1413
    .end local v19    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    :cond_9
    move/from16 v19, v3

    .end local v3    # "useCheckinFormat":Z
    .restart local v19    # "useCheckinFormat":Z
    const-string v0, "--write"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1414
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1415
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1416
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1417
    const-string v0, "Battery stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    const/4 v5, 0x1

    .line 1419
    monitor-exit v3

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1420
    :cond_a
    const-string v0, "--new-daily"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1421
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1422
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1423
    const-string v0, "New daily stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    const/4 v5, 0x1

    .line 1425
    monitor-exit v3

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 1426
    :cond_b
    const-string v0, "--read-daily"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1427
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1428
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1429
    const-string v0, "Last daily stats read."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    const/4 v5, 0x1

    .line 1431
    monitor-exit v3

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 1432
    :cond_c
    const-string v0, "--enable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "enable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_5

    .line 1439
    :cond_d
    const-string v0, "--disable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "disable"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_4

    .line 1446
    :cond_e
    const-string v0, "-h"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1447
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1448
    return-void

    .line 1449
    :cond_f
    const-string v0, "--settings"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1450
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 1451
    return-void

    .line 1452
    :cond_10
    const-string v0, "--cpu"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1453
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 1454
    return-void

    .line 1455
    :cond_11
    const-string v0, "-a"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1456
    or-int/lit8 v2, v2, 0x20

    goto/16 :goto_1

    .line 1457
    :cond_12
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2d

    if-ne v3, v0, :cond_13

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1460
    return-void

    .line 1464
    :cond_13
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1465
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1464
    invoke-virtual {v0, v13, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1470
    .end local v11    # "reqUid":I
    .local v0, "reqUid":I
    nop

    .line 1380
    move v11, v0

    goto/16 :goto_1

    .end local v0    # "reqUid":I
    .end local v13    # "arg":Ljava/lang/String;
    .end local v19    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v11    # "reqUid":I
    :goto_3
    const/4 v0, 0x1

    add-int/2addr v0, v8

    .end local v8    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 1466
    .end local v0    # "i":I
    .end local v3    # "useCheckinFormat":Z
    .restart local v8    # "i":I
    .restart local v13    # "arg":Ljava/lang/String;
    .restart local v19    # "useCheckinFormat":Z
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown package: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1469
    return-void

    .line 1440
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    :goto_4
    const/4 v0, 0x0

    invoke-direct {v1, v9, v8, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1441
    .end local v8    # "i":I
    .local v0, "i":I
    if-gez v0, :cond_15

    .line 1442
    return-void

    .line 1444
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disabled: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v10, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    return-void

    .line 1433
    .end local v0    # "i":I
    .restart local v8    # "i":I
    :cond_16
    :goto_5
    const/4 v0, 0x1

    invoke-direct {v1, v9, v8, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1434
    .end local v8    # "i":I
    .restart local v0    # "i":I
    if-gez v0, :cond_17

    .line 1435
    return-void

    .line 1437
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enabled: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v10, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    return-void

    .line 1474
    .end local v0    # "i":I
    .end local v13    # "arg":Ljava/lang/String;
    .end local v19    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    :cond_18
    move/from16 v19, v3

    move v12, v4

    move v13, v6

    move-wide/from16 v27, v14

    move v14, v7

    move v15, v11

    move v11, v5

    .end local v3    # "useCheckinFormat":Z
    .restart local v19    # "useCheckinFormat":Z
    goto :goto_6

    .end local v14    # "historyStart":J
    .end local v19    # "useCheckinFormat":Z
    .local v0, "flags":I
    .local v2, "useCheckinFormat":Z
    .local v3, "toProto":Z
    .local v4, "isRealCheckin":Z
    .local v6, "writeData":Z
    .local v7, "historyStart":J
    :cond_19
    move/from16 v19, v2

    move v12, v3

    move v13, v4

    move v14, v6

    move-wide/from16 v27, v7

    move v15, v11

    move v2, v0

    move v11, v5

    .end local v0    # "flags":I
    .end local v3    # "toProto":Z
    .end local v4    # "isRealCheckin":Z
    .end local v5    # "noOutput":Z
    .end local v6    # "writeData":Z
    .end local v7    # "historyStart":J
    .local v2, "flags":I
    .local v11, "noOutput":Z
    .local v12, "toProto":Z
    .local v13, "isRealCheckin":Z
    .local v14, "writeData":Z
    .local v15, "reqUid":I
    .restart local v19    # "useCheckinFormat":Z
    .local v27, "historyStart":J
    :goto_6
    if-eqz v11, :cond_1a

    .line 1475
    return-void

    .line 1478
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v7, v3

    .line 1480
    .local v7, "ident":J
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1481
    or-int/lit8 v0, v2, 0x40

    .line 1484
    .end local v2    # "flags":I
    .restart local v0    # "flags":I
    move v2, v0

    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    :cond_1b
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    .line 1486
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    nop

    .line 1489
    if-ltz v15, :cond_1c

    .line 1492
    and-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_1c

    .line 1493
    or-int/lit8 v0, v2, 0x2

    .line 1495
    .end local v2    # "flags":I
    .restart local v0    # "flags":I
    and-int/lit8 v0, v0, -0x11

    .line 1499
    move/from16 v17, v0

    goto :goto_7

    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    :cond_1c
    move/from16 v17, v2

    .end local v2    # "flags":I
    .local v17, "flags":I
    :goto_7
    const/high16 v0, 0x420000

    if-eqz v12, :cond_21

    .line 1500
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 1502
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v13, :cond_1f

    .line 1505
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v4

    .line 1506
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v0, :cond_1e

    .line 1508
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1509
    .local v0, "raw":[B
    if-eqz v0, :cond_1d

    .line 1510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1511
    .local v5, "in":Landroid/os/Parcel;
    array-length v6, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1512
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1513
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/ParcelFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .end local v0    # "raw":[B
    .local v29, "raw":[B
    move-wide/from16 v30, v7

    const/4 v7, 0x0

    :try_start_9
    invoke-direct {v2, v7, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .end local v7    # "ident":J
    .local v30, "ident":J
    move-object v0, v2

    .line 1515
    .local v0, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1516
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1517
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, p1

    move-object/from16 v23, v3

    move/from16 v24, v17

    move-wide/from16 v25, v27

    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1519
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1520
    :try_start_a
    monitor-exit v4

    return-void

    .line 1522
    .end local v0    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v5    # "in":Landroid/os/Parcel;
    .end local v29    # "raw":[B
    :catch_1
    move-exception v0

    goto :goto_8

    .line 1525
    .end local v30    # "ident":J
    .restart local v7    # "ident":J
    :cond_1d
    move-wide/from16 v30, v7

    .end local v7    # "ident":J
    .restart local v30    # "ident":J
    goto :goto_9

    .line 1522
    .end local v30    # "ident":J
    .restart local v7    # "ident":J
    :catch_2
    move-exception v0

    move-wide/from16 v30, v7

    .line 1523
    .end local v7    # "ident":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v30    # "ident":J
    :goto_8
    const-string v2, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1524
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1523
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 1527
    .end local v30    # "ident":J
    .restart local v7    # "ident":J
    :cond_1e
    move-wide/from16 v30, v7

    .end local v7    # "ident":J
    .restart local v30    # "ident":J
    :goto_9
    monitor-exit v4

    goto :goto_b

    .end local v30    # "ident":J
    .restart local v7    # "ident":J
    :catchall_5
    move-exception v0

    move-wide/from16 v30, v7

    .end local v7    # "ident":J
    .restart local v30    # "ident":J
    :goto_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_a

    .line 1530
    .end local v30    # "ident":J
    .restart local v7    # "ident":J
    :cond_1f
    move-wide/from16 v30, v7

    .end local v7    # "ident":J
    .restart local v30    # "ident":J
    :goto_b
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1531
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, p1

    move-object/from16 v23, v3

    move/from16 v24, v17

    move-wide/from16 v25, v27

    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1532
    if-eqz v14, :cond_20

    .line 1533
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1535
    :cond_20
    monitor-exit v2

    .line 1537
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    nop

    .line 1585
    move/from16 v32, v11

    move-wide/from16 v10, v30

    goto/16 :goto_11

    .line 1535
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_7
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    .line 1537
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v30    # "ident":J
    .restart local v7    # "ident":J
    :cond_21
    move-wide/from16 v30, v7

    .end local v7    # "ident":J
    .restart local v30    # "ident":J
    if-eqz v19, :cond_26

    .line 1538
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v18

    .line 1540
    .local v18, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v13, :cond_24

    .line 1543
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v7

    .line 1544
    :try_start_c
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v0, :cond_23

    .line 1546
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1547
    .local v0, "raw":[B
    if-eqz v0, :cond_22

    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v8, v2

    .line 1549
    .local v8, "in":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1550
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1551
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    move-object v6, v2

    .line 1553
    .local v6, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1554
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1555
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Landroid/os/ParcelFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object v2, v6

    move-object v4, v9

    move-object/from16 v5, v18

    move-object/from16 v16, v6

    move/from16 v6, v17

    .end local v6    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v16, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v32, v11

    move-wide/from16 v10, v30

    move-wide/from16 v7, v27

    .end local v8    # "in":Landroid/os/Parcel;
    .end local v11    # "noOutput":Z
    .end local v30    # "ident":J
    .local v10, "ident":J
    .local v21, "in":Landroid/os/Parcel;
    .local v32, "noOutput":Z
    :try_start_e
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1557
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/os/ParcelFormatException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1558
    :try_start_f
    monitor-exit v20

    return-void

    .line 1560
    .end local v0    # "raw":[B
    .end local v16    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v21    # "in":Landroid/os/Parcel;
    :catch_3
    move-exception v0

    goto :goto_c

    .line 1563
    .end local v10    # "ident":J
    .end local v32    # "noOutput":Z
    .restart local v11    # "noOutput":Z
    .restart local v30    # "ident":J
    :cond_22
    move-object/from16 v20, v7

    move/from16 v32, v11

    move-wide/from16 v10, v30

    .end local v11    # "noOutput":Z
    .end local v30    # "ident":J
    .restart local v10    # "ident":J
    .restart local v32    # "noOutput":Z
    goto :goto_d

    .line 1560
    .end local v10    # "ident":J
    .end local v32    # "noOutput":Z
    .restart local v11    # "noOutput":Z
    .restart local v30    # "ident":J
    :catch_4
    move-exception v0

    move-object/from16 v20, v7

    move/from16 v32, v11

    move-wide/from16 v10, v30

    .line 1561
    .end local v11    # "noOutput":Z
    .end local v30    # "ident":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v10    # "ident":J
    .restart local v32    # "noOutput":Z
    :goto_c
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1562
    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1561
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_d

    .line 1565
    .end local v10    # "ident":J
    .end local v32    # "noOutput":Z
    .restart local v11    # "noOutput":Z
    .restart local v30    # "ident":J
    :cond_23
    move-object/from16 v20, v7

    move/from16 v32, v11

    move-wide/from16 v10, v30

    .end local v11    # "noOutput":Z
    .end local v30    # "ident":J
    .restart local v10    # "ident":J
    .restart local v32    # "noOutput":Z
    :goto_d
    monitor-exit v20

    goto :goto_f

    .end local v10    # "ident":J
    .end local v32    # "noOutput":Z
    .restart local v11    # "noOutput":Z
    .restart local v30    # "ident":J
    :catchall_8
    move-exception v0

    move-object/from16 v20, v7

    move/from16 v32, v11

    move-wide/from16 v10, v30

    .end local v11    # "noOutput":Z
    .end local v30    # "ident":J
    .restart local v10    # "ident":J
    .restart local v32    # "noOutput":Z
    :goto_e
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_e

    .line 1568
    .end local v10    # "ident":J
    .end local v32    # "noOutput":Z
    .restart local v11    # "noOutput":Z
    .restart local v30    # "ident":J
    :cond_24
    move/from16 v32, v11

    move-wide/from16 v10, v30

    .end local v11    # "noOutput":Z
    .end local v30    # "ident":J
    .restart local v10    # "ident":J
    .restart local v32    # "noOutput":Z
    :goto_f
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1569
    :try_start_10
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object v4, v9

    move-object/from16 v5, v18

    move/from16 v6, v17

    move-object/from16 v16, v7

    move-wide/from16 v7, v27

    :try_start_11
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1570
    if-eqz v14, :cond_25

    .line 1571
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1573
    :cond_25
    monitor-exit v16

    .line 1575
    .end local v18    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_11

    .line 1573
    .restart local v18    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v16, v7

    :goto_10
    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_10

    .line 1577
    .end local v10    # "ident":J
    .end local v18    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v32    # "noOutput":Z
    .restart local v11    # "noOutput":Z
    .restart local v30    # "ident":J
    :cond_26
    move/from16 v32, v11

    move-wide/from16 v10, v30

    .end local v11    # "noOutput":Z
    .end local v30    # "ident":J
    .restart local v10    # "ident":J
    .restart local v32    # "noOutput":Z
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1578
    :try_start_12
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    move-object v4, v9

    move/from16 v5, v17

    move v6, v15

    move-object/from16 v16, v7

    move-wide/from16 v7, v27

    :try_start_13
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1579
    if-eqz v14, :cond_27

    .line 1580
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1582
    :cond_27
    monitor-exit v16

    .line 1585
    :goto_11
    return-void

    .line 1582
    :catchall_c
    move-exception v0

    move-object/from16 v16, v7

    :goto_12
    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_12

    .line 1486
    .end local v10    # "ident":J
    .end local v17    # "flags":I
    .end local v32    # "noOutput":Z
    .restart local v2    # "flags":I
    .restart local v7    # "ident":J
    .restart local v11    # "noOutput":Z
    :catchall_e
    move-exception v0

    move/from16 v32, v11

    move-wide v10, v7

    .end local v7    # "ident":J
    .end local v11    # "noOutput":Z
    .restart local v10    # "ident":J
    .restart local v32    # "noOutput":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public enforceCallingPermission()V
    .locals 5

    .line 1189
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1190
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    .line 1193
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1192
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1194
    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .locals 1
    .param p1, "rpmStats"    # Lcom/android/internal/os/RpmStats;

    .line 128
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    nop

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 3

    .line 1183
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryStat([I)[Landroid/os/Bundle;
    .locals 23
    .param p1, "uids"    # [I

    move-object/from16 v0, p0

    .line 1199
    move-object/from16 v1, p1

    const-string/jumbo v2, "wakelock"

    .line 1200
    .local v2, "WAKELOCK":Ljava/lang/String;
    const-string v3, "gps_time"

    .line 1201
    .local v3, "GPS_TIME":Ljava/lang/String;
    const-string v4, "gps_count"

    .line 1202
    .local v4, "GPS_COUNT":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_6

    .line 1205
    array-length v5, v1

    new-array v5, v5, [Landroid/os/Bundle;

    .line 1206
    .local v5, "result":[Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 1207
    .local v6, "which":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1208
    .local v7, "nowRealtime":J
    const/4 v10, 0x0

    .line 1208
    .local v10, "i":I
    :goto_0
    array-length v11, v1

    if-ge v10, v11, :cond_5

    .line 1209
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    aget v12, v1, v10

    invoke-virtual {v11, v12}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v11

    .line 1210
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    if-eqz v11, :cond_3

    .line 1211
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    aput-object v12, v5, v10

    .line 1213
    const-wide/16 v12, 0x0

    .line 1214
    .local v12, "wakelockTime":J
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v14

    .line 1215
    .local v14, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v14, :cond_2

    .line 1216
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1217
    .local v15, "pidBundle":Landroid/os/Bundle;
    move-wide/from16 v16, v12

    const/4 v12, 0x0

    .line 1217
    .local v12, "j":I
    .local v16, "wakelockTime":J
    :goto_1
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 1218
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 1219
    .local v13, "key":I
    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Landroid/os/BatteryStats$Uid$Pid;

    .line 1220
    .local v9, "p":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    iget-wide v2, v9, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 1221
    .end local v2    # "WAKELOCK":Ljava/lang/String;
    .end local v3    # "GPS_TIME":Ljava/lang/String;
    .local v19, "WAKELOCK":Ljava/lang/String;
    .local v20, "GPS_TIME":Ljava/lang/String;
    move-object/from16 v21, v4

    iget v4, v9, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    .line 1221
    .end local v4    # "GPS_COUNT":Ljava/lang/String;
    .local v21, "GPS_COUNT":Ljava/lang/String;
    if-lez v4, :cond_0

    iget-wide v0, v9, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v0, v7, v0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    :goto_2
    add-long/2addr v0, v2

    .line 1222
    .end local v16    # "wakelockTime":J
    .local v0, "wakelockTime":J
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1217
    .end local v9    # "p":Landroid/os/BatteryStats$Uid$Pid;
    .end local v13    # "key":I
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v16, v0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    .line 1224
    .end local v0    # "wakelockTime":J
    .end local v12    # "j":I
    .end local v19    # "WAKELOCK":Ljava/lang/String;
    .end local v20    # "GPS_TIME":Ljava/lang/String;
    .end local v21    # "GPS_COUNT":Ljava/lang/String;
    .restart local v2    # "WAKELOCK":Ljava/lang/String;
    .restart local v3    # "GPS_TIME":Ljava/lang/String;
    .restart local v4    # "GPS_COUNT":Ljava/lang/String;
    .restart local v16    # "wakelockTime":J
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 1224
    .end local v2    # "WAKELOCK":Ljava/lang/String;
    .end local v3    # "GPS_TIME":Ljava/lang/String;
    .end local v4    # "GPS_COUNT":Ljava/lang/String;
    .restart local v19    # "WAKELOCK":Ljava/lang/String;
    .restart local v20    # "GPS_TIME":Ljava/lang/String;
    .restart local v21    # "GPS_COUNT":Ljava/lang/String;
    aget-object v0, v5, v10

    const-string/jumbo v1, "wakelock"

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1228
    .end local v15    # "pidBundle":Landroid/os/Bundle;
    move-wide/from16 v12, v16

    goto :goto_3

    .line 1228
    .end local v16    # "wakelockTime":J
    .end local v19    # "WAKELOCK":Ljava/lang/String;
    .end local v20    # "GPS_TIME":Ljava/lang/String;
    .end local v21    # "GPS_COUNT":Ljava/lang/String;
    .restart local v2    # "WAKELOCK":Ljava/lang/String;
    .restart local v3    # "GPS_TIME":Ljava/lang/String;
    .restart local v4    # "GPS_COUNT":Ljava/lang/String;
    .local v12, "wakelockTime":J
    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 1228
    .end local v2    # "WAKELOCK":Ljava/lang/String;
    .end local v3    # "GPS_TIME":Ljava/lang/String;
    .end local v4    # "GPS_COUNT":Ljava/lang/String;
    .restart local v19    # "WAKELOCK":Ljava/lang/String;
    .restart local v20    # "GPS_TIME":Ljava/lang/String;
    .restart local v21    # "GPS_COUNT":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    move-object/from16 v2, p1

    aget v3, v2, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1229
    aget-object v1, v5, v10

    const-string v3, "gps_count"

    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    aget v9, v2, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .end local v12    # "wakelockTime":J
    .end local v14    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    goto :goto_4

    .line 1208
    .end local v19    # "WAKELOCK":Ljava/lang/String;
    .end local v20    # "GPS_TIME":Ljava/lang/String;
    .end local v21    # "GPS_COUNT":Ljava/lang/String;
    .restart local v2    # "WAKELOCK":Ljava/lang/String;
    .restart local v3    # "GPS_TIME":Ljava/lang/String;
    .restart local v4    # "GPS_COUNT":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object v2, v1

    .line 1208
    .end local v2    # "WAKELOCK":Ljava/lang/String;
    .end local v3    # "GPS_TIME":Ljava/lang/String;
    .end local v4    # "GPS_COUNT":Ljava/lang/String;
    .restart local v19    # "WAKELOCK":Ljava/lang/String;
    .restart local v20    # "GPS_TIME":Ljava/lang/String;
    .restart local v21    # "GPS_COUNT":Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object v1, v2

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto/16 :goto_0

    .line 1233
    .end local v10    # "i":I
    .end local v19    # "WAKELOCK":Ljava/lang/String;
    .end local v20    # "GPS_TIME":Ljava/lang/String;
    .end local v21    # "GPS_COUNT":Ljava/lang/String;
    .restart local v2    # "WAKELOCK":Ljava/lang/String;
    .restart local v3    # "GPS_TIME":Ljava/lang/String;
    .restart local v4    # "GPS_COUNT":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object v2, v1

    .line 1233
    .end local v2    # "WAKELOCK":Ljava/lang/String;
    .end local v3    # "GPS_TIME":Ljava/lang/String;
    .end local v4    # "GPS_COUNT":Ljava/lang/String;
    .restart local v19    # "WAKELOCK":Ljava/lang/String;
    .restart local v20    # "GPS_TIME":Ljava/lang/String;
    .restart local v21    # "GPS_COUNT":Ljava/lang/String;
    return-object v5

    .line 1203
    .end local v5    # "result":[Landroid/os/Bundle;
    .end local v6    # "which":I
    .end local v7    # "nowRealtime":J
    .end local v19    # "WAKELOCK":Ljava/lang/String;
    .end local v20    # "GPS_TIME":Ljava/lang/String;
    .end local v21    # "GPS_COUNT":Ljava/lang/String;
    .restart local v2    # "WAKELOCK":Ljava/lang/String;
    .restart local v3    # "GPS_TIME":Ljava/lang/String;
    .restart local v4    # "GPS_COUNT":Ljava/lang/String;
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object v2, v1

    .line 1203
    .end local v2    # "WAKELOCK":Ljava/lang/String;
    .end local v3    # "GPS_TIME":Ljava/lang/String;
    .end local v4    # "GPS_COUNT":Ljava/lang/String;
    .restart local v19    # "WAKELOCK":Ljava/lang/String;
    .restart local v20    # "GPS_TIME":Ljava/lang/String;
    .restart local v21    # "GPS_COUNT":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "uid is not allow"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 2

    .line 1592
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 2

    .line 1612
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .locals 4
    .param p1, "requestUid"    # I

    .line 1698
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 1699
    .local v0, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 1700
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 1701
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v2, :cond_0

    .line 1702
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 1704
    :cond_0
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v3
.end method

.method public getPlatformLowPowerStats()Ljava/lang/String;
    .locals 5

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 139
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 140
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 141
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 142
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    .line 143
    const/4 v1, 0x0

    return-object v1

    .line 144
    :cond_0
    if-nez v0, :cond_1

    .line 145
    const-string v1, "Empty"

    return-object v1

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 148
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 149
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 152
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public getServiceType()I
    .locals 1

    .line 282
    const/16 v0, 0x9

    return v0
.end method

.method public getStatistics()[B
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 392
    .local v0, "out":Landroid/os/Parcel;
    const-string v1, "get-stats"

    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 393
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 395
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 397
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    return-object v1

    .line 395
    .end local v1    # "data":[B
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 402
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "out":Landroid/os/Parcel;
    const-string v1, "get-stats"

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 408
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 412
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 414
    :try_start_1
    const-string v3, "battery-stats"

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 415
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    return-object v2

    .line 410
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .locals 5

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 164
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    .line 165
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_0
    if-nez v0, :cond_1

    .line 167
    const-string v1, "Empty"

    return-object v1

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 171
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 172
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 174
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1603
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1604
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initPowerManagement()V
    .locals 4

    .line 248
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 249
    .local v0, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 252
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 251
    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 254
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isCharging()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnBattery()Z
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 508
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 509
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 501
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 502
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 504
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1093
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1095
    monitor-exit v0

    .line 1096
    return-void

    .line 1095
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1069
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1071
    monitor-exit v0

    .line 1072
    return-void

    .line 1071
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1077
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1078
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1079
    monitor-exit v0

    .line 1080
    return-void

    .line 1079
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1113
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1120
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1114
    :cond_1
    :goto_0
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid bluetooth data given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    move-object v1, p0

    .line 544
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 545
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 546
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 548
    monitor-exit v2

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 705
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 706
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V

    .line 708
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1047
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;I)V

    .line 1049
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 442
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 443
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 445
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFlashlightOff(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 837
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 838
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V

    .line 840
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 842
    monitor-exit v0

    .line 843
    return-void

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFlashlightOn(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 828
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 829
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V

    .line 831
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 833
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 943
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 944
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 946
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 985
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 986
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 988
    monitor-exit v0

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 950
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 951
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 953
    monitor-exit v0

    .line 954
    return-void

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 992
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 993
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 994
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 995
    monitor-exit v0

    .line 996
    return-void

    .line 995
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 8
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 627
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 628
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 631
    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    .line 632
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 633
    .local v3, "temp":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 634
    .local v4, "count":I
    if-eqz v3, :cond_0

    .line 635
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 637
    :cond_0
    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 638
    const/4 v4, 0x0

    .line 640
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 641
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->gpsHistory:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .end local v2    # "uid":I
    .end local v3    # "temp":Ljava/lang/Integer;
    .end local v4    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 645
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteGpsSignalQuality(I)V
    .locals 2
    .param p1, "signalLevel"    # I

    .line 649
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(I)V

    .line 651
    monitor-exit v0

    .line 652
    return-void

    .line 651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .line 698
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 699
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 701
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I

    .line 477
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 478
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;II)V

    .line 480
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;II)I

    .line 483
    monitor-exit v0

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 468
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 470
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    move v3, p2

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;II)I

    .line 473
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteJobsDeferred(IIJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J

    .line 488
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJ)V

    .line 490
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 578
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 579
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 581
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 587
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 588
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 590
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 561
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 562
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 564
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 570
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 571
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 573
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteMobileRadioPowerState(IJI)V
    .locals 4
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I

    .line 712
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 714
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJI)Z

    move-result v1

    .line 716
    .local v1, "update":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    if-eqz v1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v2, "modem-data"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 721
    :cond_0
    return-void

    .line 716
    .end local v1    # "update":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1127
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    .line 1133
    return-void

    .line 1128
    :cond_1
    :goto_0
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid modem data given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return-void
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 1031
    monitor-exit v0

    .line 1032
    return-void

    .line 1031
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteNetworkStatsEnabled()V
    .locals 3

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1040
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1042
    return-void
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1054
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;J)V

    .line 1056
    monitor-exit v0

    .line 1057
    return-void

    .line 1056
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1061
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1062
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V

    .line 1063
    monitor-exit v0

    .line 1064
    return-void

    .line 1063
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .line 745
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 746
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 748
    monitor-exit v0

    .line 749
    return-void

    .line 748
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneOff()V
    .locals 2

    .line 731
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 732
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 734
    monitor-exit v0

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneOn()V
    .locals 2

    .line 724
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 725
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 738
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 739
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 741
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 752
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 753
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 754
    .local v0, "simState":I
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 756
    monitor-exit v1

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 361
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 353
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V

    .line 355
    const/16 v1, 0x1c

    const/4 v2, 0x2

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 369
    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 371
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 347
    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetAudio()V
    .locals 5

    .line 810
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 811
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 813
    const/16 v1, 0x17

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 815
    monitor-exit v0

    .line 816
    return-void

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetBleScan()V
    .locals 2

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1085
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked()V

    .line 1087
    monitor-exit v0

    .line 1088
    return-void

    .line 1087
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetCamera()V
    .locals 5

    .line 866
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 867
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V

    .line 869
    const/16 v1, 0x19

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 871
    monitor-exit v0

    .line 872
    return-void

    .line 871
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetFlashlight()V
    .locals 5

    .line 875
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 876
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V

    .line 878
    const/16 v1, 0x1a

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 880
    monitor-exit v0

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetVideo()V
    .locals 5

    .line 819
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 820
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 822
    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 824
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 676
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 677
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 678
    const/16 v1, 0x9

    :try_start_0
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 679
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 680
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 656
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 657
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->offIsScecond:Z

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mScreenOn:Z

    .line 659
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->offReset()V

    goto :goto_0

    .line 661
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mScreenOn:Z

    .line 662
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->onReset()V

    .line 665
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 667
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 668
    const/16 v1, 0x1d

    :try_start_0
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 670
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 671
    monitor-exit v0

    .line 673
    return-void

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartAudio(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 774
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 775
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 777
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 779
    monitor-exit v0

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartCamera(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 846
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 848
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V

    .line 850
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 852
    monitor-exit v0

    .line 854
    return-void

    .line 852
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartSensor(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 594
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 595
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 597
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 599
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartVideo(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 792
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 793
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 795
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    move-object v1, p0

    .line 516
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 517
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 518
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 518
    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 521
    monitor-exit v2

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 534
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 535
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopAudio(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 783
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 784
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 786
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 788
    monitor-exit v0

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopCamera(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 857
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 858
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V

    .line 860
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 862
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopSensor(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 604
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 606
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 608
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopVideo(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 801
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 802
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 804
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 806
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    move-object v1, p0

    .line 525
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 526
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 527
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 528
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 527
    move v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 529
    monitor-exit v2

    .line 530
    return-void

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 553
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 554
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 458
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 459
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 461
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 449
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 450
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 452
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 454
    monitor-exit v0

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteUidProcessState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 376
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 377
    const/16 v1, 0x1b

    .line 378
    :try_start_0
    invoke-static {p2}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v2

    .line 377
    invoke-static {v1, p1, v2}, Landroid/util/StatsLog;->write(III)I

    .line 380
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(II)V

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteUserActivity(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .line 684
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 685
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 687
    monitor-exit v0

    .line 688
    return-void

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteVibratorOff(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 619
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 620
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 622
    monitor-exit v0

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteVibratorOn(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .line 612
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 613
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 615
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .line 691
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 692
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V

    .line 694
    monitor-exit v0

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;

    .line 494
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 495
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 497
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1014
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1015
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1016
    monitor-exit v0

    .line 1017
    return-void

    .line 1016
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1021
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1022
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1023
    monitor-exit v0

    .line 1024
    return-void

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1102
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1108
    return-void

    .line 1103
    :cond_1
    :goto_0
    const-string v0, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid wifi data given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 978
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 979
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 981
    monitor-exit v0

    .line 982
    return-void

    .line 981
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 971
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 972
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 974
    monitor-exit v0

    .line 975
    return-void

    .line 974
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiOff()V
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 768
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 770
    monitor-exit v0

    .line 771
    return-void

    .line 770
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiOn()V
    .locals 2

    .line 760
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 761
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 763
    monitor-exit v0

    .line 764
    return-void

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiRadioPowerState(IJI)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I

    .line 885
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 889
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 891
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    const-string/jumbo v1, "inactive"

    goto :goto_1

    .line 892
    :cond_1
    :goto_0
    const-string v1, "active"

    .line 893
    :goto_1
    nop

    .line 894
    .local v1, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi-data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 896
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJI)V

    .line 897
    monitor-exit v0

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .locals 2
    .param p1, "newRssi"    # I

    .line 936
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 937
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 939
    monitor-exit v0

    .line 940
    return-void

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 901
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 902
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 904
    monitor-exit v0

    .line 905
    return-void

    .line 904
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 908
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 909
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 911
    monitor-exit v0

    .line 912
    return-void

    .line 911
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiScanStarted(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 957
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 958
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 960
    monitor-exit v0

    .line 961
    return-void

    .line 960
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 999
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1001
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1002
    monitor-exit v0

    .line 1003
    return-void

    .line 1002
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiScanStopped(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 964
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 965
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 966
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 967
    monitor-exit v0

    .line 968
    return-void

    .line 967
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1009
    monitor-exit v0

    .line 1010
    return-void

    .line 1009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 923
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 924
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 925
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 915
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 916
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 917
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 918
    monitor-exit v0

    .line 919
    return-void

    .line 918
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 2
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .line 929
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 930
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 932
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 321
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(I)V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 3
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 287
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 327
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish()V
    .locals 3

    .line 200
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 201
    const-string v0, "batterystats"

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 202
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 315
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 317
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scheduleWriteToDisk()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    .line 307
    return-void
.end method

.method public setBatteryState(IIIIIIII)V
    .locals 13
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I

    move-object v10, p0

    .line 1143
    invoke-virtual {v10}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1147
    iget-object v11, v10, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v12, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;

    move-object v0, v12

    move-object v1, v10

    move/from16 v2, p3

    move v3, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v11, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1172
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->sendIntentByLevel(III)V

    .line 1174
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 259
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 263
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    .line 269
    return-void

    .line 265
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemServicesReady()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 6
    .param p1, "requestUid"    # I

    .line 1622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1628
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1629
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1631
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1632
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    return-object v3

    .line 1633
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1638
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 1634
    :catch_0
    move-exception v2

    .line 1635
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1636
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1638
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 7
    .param p1, "requestUids"    # [I

    .line 1647
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1652
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 1654
    .local v2, "i":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1655
    const-string v3, "get-health-stats-for-uids"

    const/16 v4, 0x1f

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1657
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1658
    :try_start_1
    array-length v4, p1

    .line 1659
    .local v4, "N":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 1660
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1661
    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1660
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1663
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1663
    return-object v5

    .line 1664
    .end local v4    # "N":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1670
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 1665
    :catch_0
    move-exception v3

    .line 1668
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1670
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
