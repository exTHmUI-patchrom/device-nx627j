.class public Lcom/android/internal/os/MemoryPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MemoryPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MemoryPowerCalculator"


# instance fields
.field private final powerAverages:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 13
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 14
    const-string/jumbo v0, "memory.bandwidths"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v0

    .line 15
    .local v0, "numBuckets":I
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    .line 16
    const/4 v1, 0x0

    .line 16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    iget-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    const-string/jumbo v3, "memory.bandwidths"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 18
    iget-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    aget-wide v2, v2, v1

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .line 26
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 18
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .local v2, "totalMah":D
    const-wide/16 v4, 0x0

    .line 33
    .local v4, "totalTimeMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v6

    .line 34
    .local v6, "timers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v8, v0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 35
    iget-object v8, v0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v9

    long-to-int v9, v9

    aget-wide v8, v8, v9

    .line 36
    .local v8, "mAatRail":D
    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v11, p3

    move/from16 v13, p7

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    .line 37
    .local v14, "timeMs":J
    long-to-double v10, v14

    mul-double/2addr v10, v8

    const-wide v16, 0x40ed4c0000000000L    # 60000.0

    div-double v10, v10, v16

    .line 44
    .local v10, "mAm":D
    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    div-double v16, v10, v16

    add-double v2, v2, v16

    .line 45
    add-long/2addr v4, v14

    .line 34
    .end local v8    # "mAatRail":D
    .end local v10    # "mAm":D
    .end local v14    # "timeMs":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 47
    .end local v7    # "i":I
    :cond_0
    move/from16 v13, p7

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 48
    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 53
    return-void
.end method
