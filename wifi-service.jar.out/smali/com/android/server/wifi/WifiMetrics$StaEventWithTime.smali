.class Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaEventWithTime"
.end annotation


# instance fields
.field public staEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

.field public wallClockMillis:J


# direct methods
.method constructor <init>(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;J)V
    .locals 0
    .param p1, "event"    # Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .param p2, "wallClockMillis"    # J

    .line 3132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3133
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;->staEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 3134
    iput-wide p2, p0, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;->wallClockMillis:J

    .line 3135
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 3138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3139
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3140
    .local v1, "c":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;->wallClockMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3141
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;->wallClockMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 3142
    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const/4 v4, 0x5

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3144
    :cond_0
    const-string v2, "                  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3146
    :goto_0
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$StaEventWithTime;->staEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->staEventToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
