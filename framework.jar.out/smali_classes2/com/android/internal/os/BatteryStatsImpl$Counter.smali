.class public Lcom/android/internal/os/BatteryStatsImpl$Counter;
.super Landroid/os/BatteryStats$Counter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# instance fields
.field final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mLoadedCount:I

.field mPluggedCount:I

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mUnpluggedCount:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1298
    invoke-direct {p0}, Landroid/os/BatteryStats$Counter;-><init>()V

    .line 1283
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1299
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1300
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1301
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1289
    invoke-direct {p0}, Landroid/os/BatteryStats$Counter;-><init>()V

    .line 1283
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1290
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    .line 1292
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    .line 1294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    .line 1295
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1296
    return-void
.end method

.method public static readCounterFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 1
    .param p0, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 1343
    const/4 v0, 0x0

    return-object v0

    .line 1345
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static writeCounterToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Counter;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counter"    # Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 1326
    if-nez p1, :cond_0

    .line 1327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    return-void

    .line 1330
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 1333
    return-void
.end method


# virtual methods
.method addAtomic(I)V
    .locals 1
    .param p1, "delta"    # I

    .line 1375
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1378
    :cond_0
    return-void
.end method

.method detach()V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1393
    return-void
.end method

.method public getCountLocked(I)I
    .locals 2
    .param p1, "which"    # I

    .line 1350
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1351
    .local v0, "val":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1352
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1353
    :cond_0
    if-eqz p1, :cond_1

    .line 1354
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    sub-int/2addr v0, v1

    .line 1357
    :cond_1
    :goto_0
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1365
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 1311
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    .line 1312
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 1316
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    .line 1317
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    .line 1404
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1405
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    .line 1406
    return-void
.end method

.method reset(Z)V
    .locals 2
    .param p1, "detachIfReset"    # Z

    .line 1384
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1385
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    .line 1386
    if-eqz p1, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 1389
    :cond_0
    return-void
.end method

.method public stepAtomic()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1369
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1372
    :cond_0
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1398
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    return-void
.end method
