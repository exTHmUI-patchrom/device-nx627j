.class public Lcom/android/server/wifi/BaseWifiDiagnostics;
.super Ljava/lang/Object;
.source "BaseWifiDiagnostics.java"


# static fields
.field public static final CONNECTION_EVENT_FAILED:B = 0x2t

.field public static final CONNECTION_EVENT_STARTED:B = 0x0t

.field public static final CONNECTION_EVENT_SUCCEEDED:B = 0x1t


# instance fields
.field protected mDriverVersion:Ljava/lang/String;

.field protected mFirmwareVersion:Ljava/lang/String;

.field protected mSupportedFeatureSet:I

.field protected final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 0
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    monitor-enter p0

    .line 46
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 0
    .param p1, "reason"    # I

    monitor-enter p0

    .line 44
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/BaseWifiDiagnostics;->dump(Ljava/io/PrintWriter;)V

    .line 50
    const-string v0, "*** firmware logging disabled, no debug data ****"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string v0, "set config_wifi_enable_wifi_firmware_debugging to enable"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 48
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/BaseWifiDiagnostics;
    throw p1
.end method

.method protected declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 63
    :try_start_0
    const-string v0, "Chipset information :-----------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FW Version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Driver Version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mDriverVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Feature set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mSupportedFeatureSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 62
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/BaseWifiDiagnostics;
    throw p1
.end method

.method declared-synchronized reportConnectionEvent(JB)V
    .locals 0
    .param p1, "connectionId"    # J
    .param p3, "event"    # B

    monitor-enter p0

    .line 42
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 1
    .param p1, "verboseEnabled"    # Z

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mFirmwareVersion:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mDriverVersion:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/BaseWifiDiagnostics;->mSupportedFeatureSet:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 25
    .end local p1    # "verboseEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/BaseWifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 0

    monitor-enter p0

    .line 31
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopLogging()V
    .locals 0

    monitor-enter p0

    .line 35
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 0

    monitor-enter p0

    .line 33
    monitor-exit p0

    return-void
.end method

.method public takeBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bugTitle"    # Ljava/lang/String;
    .param p2, "bugDetail"    # Ljava/lang/String;

    .line 60
    return-void
.end method
