.class public Lcom/android/server/wifi/SarInfo;
.super Ljava/lang/Object;
.source "SarInfo.java"


# static fields
.field public static final INITIAL_SAR_SCENARIO:I = -0x2

.field public static final RESET_SAR_SCENARIO:I = -0x1

.field public static final SAR_SENSOR_FREE_SPACE:I = 0x1

.field private static final SAR_SENSOR_FREE_SPACE_STR:Ljava/lang/String; = "SAR_SENSOR_FREE_SPACE"

.field public static final SAR_SENSOR_NEAR_BODY:I = 0x4

.field private static final SAR_SENSOR_NEAR_BODY_STR:Ljava/lang/String; = "SAR_SENSOR_NEAR_BODY"

.field public static final SAR_SENSOR_NEAR_HAND:I = 0x2

.field private static final SAR_SENSOR_NEAR_HAND_STR:Ljava/lang/String; = "SAR_SENSOR_NEAR_HAND"

.field public static final SAR_SENSOR_NEAR_HEAD:I = 0x3

.field private static final SAR_SENSOR_NEAR_HEAD_STR:Ljava/lang/String; = "SAR_SENSOR_NEAR_HEAD"

.field private static final TAG:Ljava/lang/String; = "WifiSarInfo"


# instance fields
.field public attemptedSarScenario:I

.field public isEarPieceActive:Z

.field public isVoiceCall:Z

.field public isWifiClientEnabled:Z

.field public isWifiSapEnabled:Z

.field public isWifiScanOnlyEnabled:Z

.field private mAllWifiDisabled:Z

.field private mLastReportedIsEarPieceActive:Z

.field private mLastReportedIsVoiceCall:Z

.field private mLastReportedIsWifiSapEnabled:Z

.field private mLastReportedScenario:I

.field private mLastReportedScenarioTs:J

.field private mLastReportedSensorState:I

.field public sarSapSupported:Z

.field public sarSensorSupported:Z

.field public sarVoiceCallSupported:Z

.field public sensorState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/SarInfo;->sensorState:I

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isWifiClientEnabled:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isWifiScanOnlyEnabled:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    .line 78
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/SarInfo;->attemptedSarScenario:I

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->mAllWifiDisabled:Z

    .line 83
    iput v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedSensorState:I

    .line 84
    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsWifiSapEnabled:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsVoiceCall:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsEarPieceActive:Z

    .line 87
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedScenario:I

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedScenarioTs:J

    return-void
.end method

.method public static sensorStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "sensorState"    # I

    .line 191
    packed-switch p0, :pswitch_data_0

    .line 201
    const-string v0, "Invalid SAR sensor state"

    return-object v0

    .line 195
    :pswitch_0
    const-string v0, "SAR_SENSOR_NEAR_BODY"

    return-object v0

    .line 199
    :pswitch_1
    const-string v0, "SAR_SENSOR_NEAR_HEAD"

    return-object v0

    .line 197
    :pswitch_2
    const-string v0, "SAR_SENSOR_NEAR_HAND"

    return-object v0

    .line 193
    :pswitch_3
    const-string v0, "SAR_SENSOR_FREE_SPACE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 169
    const-string v0, "Dump of SarInfo"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string v0, "Current values:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Sensor state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SarInfo;->sensorState:I

    invoke-static {v1}, Lcom/android/server/wifi/SarInfo;->sensorStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Voice Call state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Wifi Client state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isWifiClientEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Wifi Soft AP state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Wifi ScanOnly state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isWifiScanOnlyEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Earpiece state is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string v0, "Last reported values:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Sensor state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedSensorState:I

    invoke-static {v1}, Lcom/android/server/wifi/SarInfo;->sensorStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Soft AP state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsWifiSapEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Voice Call state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsVoiceCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Earpiece state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsEarPieceActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last reported scenario: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedScenario:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedScenarioTs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public reportingSuccessful()V
    .locals 2

    .line 132
    iget v0, p0, Lcom/android/server/wifi/SarInfo;->sensorState:I

    iput v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedSensorState:I

    .line 133
    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsWifiSapEnabled:Z

    .line 134
    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsVoiceCall:Z

    .line 135
    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsEarPieceActive:Z

    .line 136
    iget v0, p0, Lcom/android/server/wifi/SarInfo;->attemptedSarScenario:I

    iput v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedScenario:I

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedScenarioTs:J

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->mAllWifiDisabled:Z

    .line 140
    return-void
.end method

.method public resetSarScenarioNeeded()Z
    .locals 1

    .line 149
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SarInfo;->setSarScenarioNeeded(I)Z

    move-result v0

    return v0
.end method

.method public setSarScenarioNeeded(I)Z
    .locals 1
    .param p1, "scenario"    # I

    .line 160
    iput p1, p0, Lcom/android/server/wifi/SarInfo;->attemptedSarScenario:I

    .line 161
    iget v0, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedScenario:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldReport()Z
    .locals 4

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isWifiClientEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isWifiScanOnlyEnabled:Z

    if-nez v0, :cond_0

    .line 106
    iput-boolean v2, p0, Lcom/android/server/wifi/SarInfo;->mAllWifiDisabled:Z

    .line 107
    return v1

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->mAllWifiDisabled:Z

    if-eqz v0, :cond_1

    .line 112
    return v2

    .line 116
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/SarInfo;->sensorState:I

    iget v3, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedSensorState:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isWifiSapEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsWifiSapEnabled:Z

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isVoiceCall:Z

    iget-boolean v3, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsVoiceCall:Z

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    iget-boolean v3, p0, Lcom/android/server/wifi/SarInfo;->mLastReportedIsEarPieceActive:Z

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    return v1

    .line 120
    :cond_3
    :goto_0
    return v2
.end method
