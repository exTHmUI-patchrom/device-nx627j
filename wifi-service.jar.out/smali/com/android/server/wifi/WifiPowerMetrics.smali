.class public Lcom/android/server/wifi/WifiPowerMetrics;
.super Ljava/lang/Object;
.source "WifiPowerMetrics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiPowerMetrics"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 44
    return-void
.end method

.method private getStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 3

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiPowerMetrics"

    const-string v2, "Unable to obtain Wifi power stats from BatteryStats"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 6

    .line 54
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    .line 55
    .local v0, "m":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiPowerMetrics;->getStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    .line 56
    .local v1, "stats":Landroid/os/connectivity/WifiBatteryStats;
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/os/connectivity/WifiBatteryStats;->getLoggingDurationMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    .line 58
    invoke-virtual {v1}, Landroid/os/connectivity/WifiBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    .line 60
    invoke-virtual {v1}, Landroid/os/connectivity/WifiBatteryStats;->getIdleTimeMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    .line 61
    invoke-virtual {v1}, Landroid/os/connectivity/WifiBatteryStats;->getRxTimeMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    .line 62
    invoke-virtual {v1}, Landroid/os/connectivity/WifiBatteryStats;->getTxTimeMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    .line 64
    :cond_0
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 72
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiPowerMetrics;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    move-result-object v0

    .line 73
    .local v0, "s":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "Wifi power metrics:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging duration (time on battery): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Energy consumed by wifi (mAh): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amount of time wifi is in idle (ms): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amount of time wifi is in rx (ms): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amount of time wifi is in tx (ms): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
