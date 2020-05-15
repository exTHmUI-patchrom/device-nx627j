.class Lcom/android/server/cpuperf/QComBoostController$LockParameters;
.super Ljava/lang/Object;
.source "QComBoostController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/QComBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockParameters"
.end annotation


# instance fields
.field aboveHispeedDelay:[I

.field avoidSuperGamePerf:Z

.field cpuBandwidthMinFrequency:I

.field disablePowerCollapse:Z

.field disableStorageScaling:Z

.field fanLevel:I

.field goHispeedLoad:[I

.field gpuMaxPowerLevel:I

.field gpuMinPowerLevel:I

.field hiPerfGPUMaxPowerLevel:I

.field hiPerfGPUMinPowerLevel:I

.field hiPerfMaxFreq:[I

.field hiPerfMinFreq:[I

.field hiPerfSchedBoost:I

.field hiPerfSchedDownMigrate:[I

.field hiPerfSchedUpMigrate:[I

.field hiPerfSchedUtilHispeedFreq:[I

.field hiPerfSchedUtilHispeedLoad:[I

.field hispeedFreq:[I

.field inputBoostFreq:I

.field inputBoostMs:I

.field maxFrequencies:[I

.field maxNumCores:[I

.field minFrequencies:[I

.field minNumCores:[I

.field restricted:Z

.field schedBoost:I

.field schedDownMigrate:[I

.field schedMostlyIdleLoad:I

.field schedMostlyIdleNRRun:I

.field schedSmallTask:I

.field schedUpMigrate:[I

.field schedUtilCpuFreqCtrl:I

.field schedutilHispeedFreq:[I

.field schedutilHispeedLoad:[I

.field targetLoads:[I

.field thermalLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I

    .line 1315
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    .line 1316
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    .line 1317
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    .line 1318
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I

    .line 1319
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    .line 1320
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    .line 1323
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I

    .line 1324
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    .line 1325
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    .line 1326
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disablePowerCollapse:Z

    .line 1334
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->restricted:Z

    .line 1335
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    .line 1337
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    .line 1340
    iput v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    .line 1345
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    .line 1346
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    .line 1347
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disableStorageScaling:Z

    .line 1348
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I

    .line 1562
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "numClusters"    # I
    .param p2, "numCores"    # I

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I

    .line 1315
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    .line 1316
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    .line 1317
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    .line 1318
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I

    .line 1319
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    .line 1320
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    .line 1323
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I

    .line 1324
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    .line 1325
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    .line 1326
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disablePowerCollapse:Z

    .line 1334
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->restricted:Z

    .line 1335
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    .line 1337
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    .line 1340
    iput v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    .line 1345
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    .line 1346
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    .line 1347
    iput-boolean v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disableStorageScaling:Z

    .line 1348
    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I

    .line 1564
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    .line 1565
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1567
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    .line 1568
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1570
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    .line 1571
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1573
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    .line 1574
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1576
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    .line 1577
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1579
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    .line 1580
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1582
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    .line 1583
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1585
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    .line 1586
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1588
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    .line 1589
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1591
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    .line 1592
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1594
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    .line 1595
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1597
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    .line 1598
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1600
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    .line 1601
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1603
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    .line 1604
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1606
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    .line 1607
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1609
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    .line 1610
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1612
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    .line 1613
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1615
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    .line 1616
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1617
    return-void
.end method


# virtual methods
.method public clone(Lcom/android/server/cpuperf/QComBoostController$LockParameters;)V
    .locals 4
    .param p1, "lockParameters"    # Lcom/android/server/cpuperf/QComBoostController$LockParameters;

    .line 1350
    if-eqz p1, :cond_0

    .line 1351
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1352
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1353
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1354
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1355
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1358
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1361
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    .line 1362
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    .line 1363
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I

    .line 1364
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    .line 1365
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    .line 1366
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1367
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1368
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I

    .line 1369
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    .line 1370
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    .line 1371
    iget-boolean v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disablePowerCollapse:Z

    iput-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disablePowerCollapse:Z

    .line 1372
    iget-boolean v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->restricted:Z

    iput-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->restricted:Z

    .line 1373
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I

    .line 1374
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    .line 1375
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUtilCpuFreqCtrl:I

    .line 1376
    iget-boolean v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    iput-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    .line 1377
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1378
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    .line 1380
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1382
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1383
    iget-object v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1384
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    .line 1385
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    .line 1386
    iget-boolean v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disableStorageScaling:Z

    iput-boolean v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disableStorageScaling:Z

    .line 1387
    iget v0, p1, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I

    iput v0, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I

    .line 1389
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1393
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1394
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1395
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1396
    const-string/jumbo v1, "minNumCores:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1397
    move v1, v2

    .line 1397
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minNumCores:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1403
    :cond_1
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    if-eqz v1, :cond_3

    .line 1404
    const-string/jumbo v1, "maxNumCores:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    move v1, v2

    .line 1405
    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxNumCores:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1408
    .end local v1    # "i":I
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1410
    :cond_3
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    if-eqz v1, :cond_5

    .line 1411
    const-string/jumbo v1, "minFrequencies:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1412
    move v1, v2

    .line 1412
    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 1413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->minFrequencies:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1415
    .end local v1    # "i":I
    :cond_4
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1417
    :cond_5
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    if-eqz v1, :cond_7

    .line 1418
    const-string/jumbo v1, "maxFrequencies:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1419
    move v1, v2

    .line 1419
    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 1420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->maxFrequencies:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1419
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1422
    .end local v1    # "i":I
    :cond_6
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1424
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBoostFreq:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostFreq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1425
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBoostMs: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->inputBoostMs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1427
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cpuBandwidthMinFrequency: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1429
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedBoost: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedBoost:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1431
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedSmallTask: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedSmallTask:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1433
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedMostlyIdleLoad: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1435
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedMostlyIdleNRRun: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1437
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1438
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    if-eqz v1, :cond_9

    .line 1439
    const-string/jumbo v1, "schedUpMigrate:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1440
    move v1, v2

    .line 1440
    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 1441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedUpMigrate:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1440
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1443
    .end local v1    # "i":I
    :cond_8
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    :cond_9
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    if-eqz v1, :cond_b

    .line 1446
    const-string/jumbo v1, "schedDownMigrate:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1447
    move v1, v2

    .line 1447
    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 1448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedDownMigrate:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1447
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1450
    .end local v1    # "i":I
    :cond_a
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1452
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePowerCollapse: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disablePowerCollapse:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1453
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableStorageScaling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->disableStorageScaling:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1455
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thermalLevel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->thermalLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1457
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpuMinPowerLevel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1459
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpuMaxPowerLevel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1461
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avoidSuperGamePerf: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->avoidSuperGamePerf:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1463
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiPerfSchedBoost: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedBoost:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1465
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fanLevel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->fanLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiPerfSchedUpMigrate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1468
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiPerfSchedDownMigrate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1470
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1471
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    if-eqz v1, :cond_d

    .line 1472
    const-string v1, "hiPerfSchedUpMigrate:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    move v1, v2

    .line 1473
    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    array-length v3, v3

    if-ge v1, v3, :cond_c

    .line 1474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUpMigrate:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1476
    .end local v1    # "i":I
    :cond_c
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1478
    :cond_d
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    if-eqz v1, :cond_f

    .line 1479
    const-string v1, "hiPerfSchedDownMigrate:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1480
    move v1, v2

    .line 1480
    .restart local v1    # "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    array-length v3, v3

    if-ge v1, v3, :cond_e

    .line 1481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedDownMigrate:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1480
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1483
    .end local v1    # "i":I
    :cond_e
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1485
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiPerfGPUMinPowerLevel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMinPowerLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1486
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiPerfGPUMaxPowerLevel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfGPUMaxPowerLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1488
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1489
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    if-eqz v1, :cond_11

    .line 1490
    const-string v1, "hiPerfMinFreq:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1491
    move v1, v2

    .line 1491
    .restart local v1    # "i":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    array-length v3, v3

    if-ge v1, v3, :cond_10

    .line 1492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMinFreq:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1491
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1494
    .end local v1    # "i":I
    :cond_10
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    :cond_11
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    if-eqz v1, :cond_13

    .line 1497
    const-string v1, "hiPerfMaxFreq:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1498
    move v1, v2

    .line 1498
    .restart local v1    # "i":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    array-length v3, v3

    if-ge v1, v3, :cond_12

    .line 1499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfMaxFreq:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1498
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1501
    .end local v1    # "i":I
    :cond_12
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1503
    :cond_13
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    if-eqz v1, :cond_15

    .line 1504
    const-string v1, "hiPerfSchedUtilHispeedLoad:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1505
    move v1, v2

    .line 1505
    .restart local v1    # "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    array-length v3, v3

    if-ge v1, v3, :cond_14

    .line 1506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedLoad:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1505
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1508
    .end local v1    # "i":I
    :cond_14
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1510
    :cond_15
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    if-eqz v1, :cond_17

    .line 1511
    const-string v1, "hiPerfSchedUtilHispeedFreq:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1512
    move v1, v2

    .line 1512
    .restart local v1    # "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    array-length v3, v3

    if-ge v1, v3, :cond_16

    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hiPerfSchedUtilHispeedFreq:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1512
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1515
    .end local v1    # "i":I
    :cond_16
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1517
    :cond_17
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    if-eqz v1, :cond_19

    .line 1518
    const-string/jumbo v1, "targetLoads:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1519
    move v1, v2

    .line 1519
    .restart local v1    # "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    array-length v3, v3

    if-ge v1, v3, :cond_18

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->targetLoads:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1519
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1522
    .end local v1    # "i":I
    :cond_18
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1524
    :cond_19
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    if-eqz v1, :cond_1b

    .line 1525
    const-string v1, "goHispeedLoad:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1526
    move v1, v2

    .line 1526
    .restart local v1    # "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1a

    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->goHispeedLoad:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1529
    .end local v1    # "i":I
    :cond_1a
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1531
    :cond_1b
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    if-eqz v1, :cond_1d

    .line 1532
    const-string v1, "hispeedFreq :\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1533
    move v1, v2

    .line 1533
    .restart local v1    # "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1c

    .line 1534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->hispeedFreq:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1533
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1536
    .end local v1    # "i":I
    :cond_1c
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1538
    :cond_1d
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    if-eqz v1, :cond_1f

    .line 1539
    const-string v1, "aboveHispeedDelay:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1540
    move v1, v2

    .line 1540
    .restart local v1    # "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1e

    .line 1541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1540
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1543
    .end local v1    # "i":I
    :cond_1e
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1545
    :cond_1f
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    if-eqz v1, :cond_21

    .line 1546
    const-string/jumbo v1, "schedutilHispeedLoad:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1547
    move v1, v2

    .line 1547
    .restart local v1    # "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    array-length v3, v3

    if-ge v1, v3, :cond_20

    .line 1548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedLoad:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1547
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1550
    .end local v1    # "i":I
    :cond_20
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1552
    :cond_21
    iget-object v1, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    if-eqz v1, :cond_23

    .line 1553
    const-string/jumbo v1, "schedutilHispeedFreq :\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1554
    nop

    .line 1554
    .local v2, "i":I
    :goto_11
    move v1, v2

    .line 1554
    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cpuperf/QComBoostController$LockParameters;->schedutilHispeedFreq:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1554
    add-int/lit8 v2, v1, 0x1

    .line 1554
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_11

    .line 1557
    .end local v2    # "i":I
    :cond_22
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1559
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
