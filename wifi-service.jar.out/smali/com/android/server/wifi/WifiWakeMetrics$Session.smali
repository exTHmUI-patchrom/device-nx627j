.class public Lcom/android/server/wifi/WifiWakeMetrics$Session;
.super Ljava/lang/Object;
.source "WifiWakeMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWakeMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field mInitEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mInitializeNetworks:I

.field mResetEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mStartNetworks:I

.field private final mStartTimestamp:J

.field mUnlockEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "numNetworks"    # I
    .param p2, "timestamp"    # J

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitializeNetworks:I

    .line 237
    iput p1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartNetworks:I

    .line 238
    iput-wide p2, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartTimestamp:J

    .line 239
    return-void
.end method


# virtual methods
.method public buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 3

    .line 308
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    .line 309
    .local v0, "sessionProto":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartTimestamp:J

    iput-wide v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    .line 310
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartNetworks:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    .line 312
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-eqz v1, :cond_0

    .line 313
    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitializeNetworks:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    .line 314
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mUnlockEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mUnlockEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mResetEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mResetEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->buildProto()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 326
    :cond_3
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 331
    const-string v0, "WifiWakeMetrics.Session:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartNetworks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartNetworks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInitializeNetworks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitializeNetworks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInitEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v1, :cond_0

    const-string v1, "{}"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnlockEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mUnlockEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v1, :cond_1

    const-string v1, "{}"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mUnlockEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWakeupEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v1, :cond_2

    const-string v1, "{}"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResetEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mResetEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v1, :cond_3

    const-string v1, "{}"

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mResetEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWakeMetrics$Event;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public hasWakeupTriggered()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recordInitializeEvent(IIJ)V
    .locals 3
    .param p1, "numScans"    # I
    .param p2, "numNetworks"    # I
    .param p3, "timestamp"    # J

    .line 251
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v0, :cond_0

    .line 252
    iput p2, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitializeNetworks:I

    .line 253
    new-instance v0, Lcom/android/server/wifi/WifiWakeMetrics$Event;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartTimestamp:J

    sub-long v1, p3, v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiWakeMetrics$Event;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mInitEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    .line 255
    :cond_0
    return-void
.end method

.method public recordResetEvent(IJ)V
    .locals 3
    .param p1, "numScans"    # I
    .param p2, "timestamp"    # J

    .line 301
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mResetEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/android/server/wifi/WifiWakeMetrics$Event;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartTimestamp:J

    sub-long v1, p2, v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiWakeMetrics$Event;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mResetEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    .line 304
    :cond_0
    return-void
.end method

.method public recordUnlockEvent(IJ)V
    .locals 3
    .param p1, "numScans"    # I
    .param p2, "timestamp"    # J

    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mUnlockEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/android/server/wifi/WifiWakeMetrics$Event;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartTimestamp:J

    sub-long v1, p2, v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiWakeMetrics$Event;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mUnlockEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    .line 269
    :cond_0
    return-void
.end method

.method public recordWakeupEvent(IJ)V
    .locals 3
    .param p1, "numScans"    # I
    .param p2, "timestamp"    # J

    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/android/server/wifi/WifiWakeMetrics$Event;

    iget-wide v1, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mStartTimestamp:J

    sub-long v1, p2, v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiWakeMetrics$Event;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWakeMetrics$Session;->mWakeupEvent:Lcom/android/server/wifi/WifiWakeMetrics$Event;

    .line 283
    :cond_0
    return-void
.end method
