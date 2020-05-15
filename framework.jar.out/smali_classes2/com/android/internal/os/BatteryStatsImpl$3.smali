.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$initialTime:J

.field final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 12405
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$initialTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 12407
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v0

    .line 12408
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12409
    .local v1, "startTime2":J
    const/4 v3, 0x0

    .line 12411
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 12412
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 12413
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 12414
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 12415
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 12416
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 12417
    const-string v4, "batterystats-checkin"

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$initialTime:J

    .line 12419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v5, v1

    .line 12417
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12425
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    .line 12420
    :catch_0
    move-exception v4

    .line 12421
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "BatteryStats"

    const-string v6, "Error writing checkin battery statistics"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12423
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12425
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 12426
    nop

    .line 12427
    .end local v1    # "startTime2":J
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    monitor-exit v0

    .line 12428
    return-void

    .line 12425
    .restart local v1    # "startTime2":J
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 12427
    .end local v1    # "startTime2":J
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
