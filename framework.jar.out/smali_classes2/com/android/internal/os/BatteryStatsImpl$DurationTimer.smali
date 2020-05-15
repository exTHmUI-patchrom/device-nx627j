.class public Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationTimer"
.end annotation


# instance fields
.field mCurrentDurationMs:J

.field mMaxDurationMs:J

.field mStartTimeMs:J

.field mTotalDurationMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .line 2262
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 2232
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2263
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p6, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 2254
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2232
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2255
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 2256
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 2257
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2258
    return-void
.end method


# virtual methods
.method public getCurrentDurationMsLocked(J)J
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 2408
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2409
    .local v0, "durationMs":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2410
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v3, 0x3e8

    mul-long v5, p1, v3

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v5

    div-long/2addr v5, v3

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 2413
    :cond_0
    return-wide v0
.end method

.method public getMaxDurationMsLocked(J)J
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 2386
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 2387
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    .line 2388
    .local v0, "durationMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2389
    return-wide v0

    .line 2392
    .end local v0    # "durationMs":J
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    return-wide v0
.end method

.method public getTotalDurationMsLocked(J)J
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 2427
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2330
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2331
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 2307
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStarted(JJJ)V

    .line 2308
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 2309
    const-wide/16 v0, 0x3e8

    div-long v0, p5, v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2311
    :cond_0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2320
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    .line 2321
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 2323
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2325
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2326
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2294
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2295
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 2296
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 2297
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2299
    return-void
.end method

.method public reset(Z)Z
    .locals 6
    .param p1, "detachIfReset"    # Z

    .line 2366
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v0

    .line 2367
    .local v0, "result":Z
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 2368
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 2369
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2370
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v1, :cond_0

    .line 2371
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v1

    div-long/2addr v1, v4

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    goto :goto_0

    .line 2373
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2375
    :goto_0
    return v0
.end method

.method public startRunningLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 2335
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 2336
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v3

    div-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2340
    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 2350
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2351
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    .line 2352
    .local v0, "durationMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 2353
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2354
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 2356
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2357
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2361
    .end local v0    # "durationMs":J
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 2362
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2282
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 2283
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2284
    div-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2285
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2267
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2268
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2269
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2270
    div-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2271
    return-void
.end method
