.class Lcom/android/server/location/GnssLocationProvider$10;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 1126
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1129
    new-instance v0, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    .line 1130
    .local v0, "xtraDownloader":Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v0}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v1

    .line 1131
    .local v1, "data":[B
    if-eqz v1, :cond_1

    .line 1132
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GnssLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    array-length v3, v1

    invoke-static {v2, v1, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2200(Lcom/android/server/location/GnssLocationProvider;[BI)V

    .line 1134
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/ExponentialBackOff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/ExponentialBackOff;->reset()V

    .line 1137
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    .line 1139
    if-nez v1, :cond_2

    .line 1142
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2400(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1143
    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$2300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/ExponentialBackOff;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v4

    .line 1142
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1148
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2500(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1149
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$2600(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 1153
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$2600(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1154
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock released by handleDownloadXtraData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v3

    .line 1156
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "GnssLocationProvider"

    const-string v5, "Wakelock timeout & release race exception in handleDownloadXtraData()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    goto :goto_1

    .line 1160
    :cond_4
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock expired before release in handleDownloadXtraData()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_1
    monitor-exit v2

    .line 1164
    return-void

    .line 1163
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
