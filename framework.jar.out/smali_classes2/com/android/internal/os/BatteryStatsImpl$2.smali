.class Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$initialTime:J

.field final synthetic val$memStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 10346
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$memStream:Ljava/io/ByteArrayOutputStream;

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$initialTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 10349
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v0

    .line 10350
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10351
    .local v1, "startTime2":J
    const/4 v3, 0x0

    .line 10353
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 10354
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 10355
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 10356
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 10357
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 10358
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 10359
    const-string v4, "batterystats-daily"

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$initialTime:J

    .line 10361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v5, v1

    .line 10359
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10366
    goto :goto_0

    .line 10362
    :catch_0
    move-exception v4

    .line 10363
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "BatteryStats"

    const-string v6, "Error writing battery daily items"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10365
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 10367
    .end local v1    # "startTime2":J
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 10368
    return-void

    .line 10367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
