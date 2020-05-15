.class public Lcom/android/internal/os/FlashlightPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "FlashlightPowerCalculator.java"


# instance fields
.field private final mFlashlightPowerOnAvg:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 26
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 27
    const-string v0, "camera.flashlight"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    .line 28
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 7
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .line 36
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 37
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 39
    .local v1, "totalTime":J
    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 40
    long-to-double v3, v1

    iget-wide v5, p0, Lcom/android/internal/os/FlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    mul-double/2addr v3, v5

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    iput-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 41
    .end local v1    # "totalTime":J
    goto :goto_0

    .line 42
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 45
    :goto_0
    return-void
.end method
