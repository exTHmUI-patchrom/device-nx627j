.class public Lcom/android/server/wifi/WifiWakeMetrics$Event;
.super Ljava/lang/Object;
.source "WifiWakeMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWakeMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public final mElapsedTime:J

.field public final mNumScans:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "numScans"    # I
    .param p2, "elapsedTime"    # J

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput p1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Event;->mNumScans:I

    .line 352
    iput-wide p2, p0, Lcom/android/server/wifi/WifiWakeMetrics$Event;->mElapsedTime:J

    .line 353
    return-void
.end method


# virtual methods
.method public buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;
    .locals 3

    .line 357
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    .line 358
    .local v0, "eventProto":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Event;->mNumScans:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;->elapsedScans:I

    .line 359
    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Event;->mElapsedTime:J

    iput-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;->elapsedTimeMillis:J

    .line 360
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mNumScans: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Event;->mNumScans:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Event;->mElapsedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
