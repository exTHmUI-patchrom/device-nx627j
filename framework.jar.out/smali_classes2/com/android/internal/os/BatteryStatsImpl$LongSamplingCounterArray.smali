.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounterArray"
.end annotation


# instance fields
.field public mCounts:[J

.field public mLoadedCounts:[J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field public mUnpluggedCounts:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1424
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 1425
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1426
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1427
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1416
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 1417
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1418
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    .line 1421
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1422
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "x1"    # Landroid/os/Parcel;
    .param p3, "x2"    # Lcom/android/internal/os/BatteryStatsImpl$1;

    .line 1410
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .param p1, "x1"    # Landroid/os/Parcel;

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method private static copyArray([J[J)[J
    .locals 2
    .param p0, "src"    # [J
    .param p1, "dest"    # [J

    .line 1565
    if-nez p0, :cond_0

    .line 1566
    const/4 v0, 0x0

    return-object v0

    .line 1568
    :cond_0
    if-nez p1, :cond_1

    .line 1569
    array-length v0, p0

    new-array p1, v0, [J

    .line 1571
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1572
    return-object p1
.end method

.method private static fillArray([JJ)V
    .locals 0
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 1550
    if-eqz p0, :cond_0

    .line 1551
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 1553
    :cond_0
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1520
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0

    .line 1523
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1539
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1542
    .local v0, "counterArray":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1543
    return-object v0

    .line 1545
    .end local v0    # "counterArray":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1505
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 1506
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    .line 1507
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    .line 1508
    return-void
.end method

.method private static subtract([J[J)V
    .locals 5
    .param p0, "val"    # [J
    .param p1, "toSubtract"    # [J

    .line 1556
    if-nez p1, :cond_0

    .line 1557
    return-void

    .line 1559
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1560
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1562
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private writeSummaryToParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1501
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1502
    return-void
.end method

.method public static writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counterArray"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 1529
    if-eqz p1, :cond_0

    .line 1530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1533
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    :goto_0
    return-void
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1430
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1431
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1432
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1433
    return-void
.end method

.method public static writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counterArray"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 1511
    if-eqz p1, :cond_0

    .line 1512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1515
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    :goto_0
    return-void
.end method


# virtual methods
.method public addCountLocked([J)V
    .locals 1
    .param p1, "counts"    # [J

    .line 1463
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 1464
    return-void
.end method

.method public addCountLocked([JZ)V
    .locals 6
    .param p1, "counts"    # [J
    .param p2, "isRunning"    # Z

    .line 1467
    if-nez p1, :cond_0

    .line 1468
    return-void

    .line 1470
    :cond_0
    if-eqz p2, :cond_2

    .line 1471
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_1

    .line 1472
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 1474
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1475
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 1474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1478
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public detach()V
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1498
    return-void
.end method

.method public getCountsLocked(I)[J
    .locals 2
    .param p1, "which"    # I

    .line 1446
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    .line 1447
    .local v0, "val":[J
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->subtract([J[J)V

    goto :goto_0

    .line 1449
    :cond_0
    if-eqz p1, :cond_1

    .line 1450
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->subtract([J[J)V

    .line 1452
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLoadedCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    .line 1458
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUnpluggedCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    .line 1459
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1457
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1460
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealTime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 1437
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    .line 1438
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 1442
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "detachIfReset"    # Z

    .line 1488
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->fillArray([JJ)V

    .line 1489
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->fillArray([JJ)V

    .line 1490
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->fillArray([JJ)V

    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 1494
    :cond_0
    return-void
.end method
