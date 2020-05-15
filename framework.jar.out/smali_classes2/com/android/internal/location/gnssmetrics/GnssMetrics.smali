.class public Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;,
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_BETWEEN_FIXES_MILLISECS:I = 0x3e8

.field public static final GPS_SIGNAL_QUALITY_GOOD:I = 0x1

.field public static final GPS_SIGNAL_QUALITY_POOR:I = 0x0

.field public static final NUM_GPS_SIGNAL_QUALITY_LEVELS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private logStartInElapsedRealTime:Ljava/lang/String;

.field private mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

.field private positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;)V
    .locals 2
    .param p1, "stats"    # Lcom/android/internal/app/IBatteryStats;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    .line 63
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 64
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 65
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 66
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 67
    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 38
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private reset()V
    .locals 5

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 311
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 312
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 313
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 314
    return-void
.end method


# virtual methods
.method public dumpGnssMetricsAsProtoString()Ljava/lang/String;
    .locals 5

    .line 155
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    .line 156
    .local v0, "msg":Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    .line 158
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    .line 162
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    .line 163
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 164
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    .line 168
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    .line 169
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 170
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    .line 174
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 175
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 176
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 179
    const-string/jumbo v1, "ro.boot.revision"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    .line 180
    invoke-static {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "s":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    .line 182
    return-object v1
.end method

.method public dumpGnssMetricsAsText()Ljava/lang/String;
    .locals 9

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "GNSS_KPI_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "  KPI logging start time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "  KPI logging end time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 196
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "  Number of location reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 198
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 200
    const-string v1, "  Percentage location failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 201
    invoke-virtual {v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v3

    mul-double/2addr v1, v3

    .line 200
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    const-string v1, "  Number of TTFF reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 204
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 206
    const-string v1, "  TTFF mean (sec): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "  TTFF standard deviation (sec): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 208
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    .line 207
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    const-string v1, "  Number of position accuracy reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 211
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 213
    const-string v1, "  Position accuracy mean (m): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 214
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "  Position accuracy standard deviation (m): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 216
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_2
    const-string v1, "  Number of CN0 reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 219
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 221
    const-string v1, "  Top 4 Avg CN0 mean (dB-Hz): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 222
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    .line 221
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "  Top 4 Avg CN0 standard deviation (dB-Hz): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 224
    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_3
    const-string v1, "GNSS_KPI_END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    .line 228
    .local v1, "stats":Landroid/os/connectivity/GpsBatteryStats;
    if-eqz v1, :cond_5

    .line 229
    const-string v2, "Power Metrics"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Time on battery (min): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object v2

    .line 233
    .local v2, "t":[J
    if-eqz v2, :cond_4

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dB-Hz (min): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    .line 236
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dB-Hz (min): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    .line 239
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_4
    const-string v3, "  Energy consumed while on battery (mAh): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    .line 241
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 242
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .end local v2    # "t":[J
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hardware Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ro.boot.revision"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public logCn0([FI)V
    .locals 6
    .param p1, "cn0s"    # [F
    .param p2, "numSv"    # I

    .line 127
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_4

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 134
    .local v0, "cn0Array":[F
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([FI)V

    .line 136
    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    .line 137
    return-void

    .line 139
    :cond_1
    add-int/lit8 v1, p2, -0x4

    aget v1, v0, v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 140
    const-wide/16 v1, 0x0

    .line 141
    .local v1, "top4AvgCn0":D
    add-int/lit8 v3, p2, -0x4

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 142
    aget v4, v0, v3

    float-to-double v4, v4

    add-double/2addr v1, v4

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "i":I
    :cond_2
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    .line 145
    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 147
    .end local v1    # "top4AvgCn0":D
    :cond_3
    return-void

    .line 128
    .end local v0    # "cn0Array":[F
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 129
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([FI)V

    .line 131
    :cond_5
    return-void
.end method

.method public logMissedReports(II)V
    .locals 5
    .param p1, "desiredTimeBetweenFixesMilliSeconds"    # I
    .param p2, "actualTimeBetweenFixesMilliSeconds"    # I

    .line 92
    nop

    .line 93
    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v0, p2, v0

    add-int/lit8 v0, v0, -0x1

    .line 94
    .local v0, "numReportMissed":I
    if-lez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public logPositionAccuracyMeters(F)V
    .locals 3
    .param p1, "positionAccuracyMeters"    # F

    .line 118
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 119
    return-void
.end method

.method public logReceivedLocationStatus(Z)V
    .locals 3
    .param p1, "isSuccessful"    # Z

    .line 76
    if-nez p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 78
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 81
    return-void
.end method

.method public logTimeToFirstFixMilliSecs(I)V
    .locals 3
    .param p1, "timeToFirstFixMilliSeconds"    # I

    .line 108
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    div-int/lit16 v1, p1, 0x3e8

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 109
    return-void
.end method
