.class public Lcom/android/internal/os/MediaPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MediaPowerCalculator.java"


# static fields
.field private static final MS_IN_HR:I = 0x36ee80


# instance fields
.field private final mAudioAveragePowerMa:D

.field private final mVideoAveragePowerMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 31
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    .line 32
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    .line 33
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 17
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 40
    move/from16 v4, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 41
    .local v5, "audioTimer":Landroid/os/BatteryStats$Timer;
    const-wide v6, 0x414b774000000000L    # 3600000.0

    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-nez v5, :cond_0

    .line 42
    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    .line 43
    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v5, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    div-long/2addr v14, v8

    .line 46
    .local v14, "totalTime":J
    iput-wide v14, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    .line 47
    long-to-double v8, v14

    iget-wide v10, v0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    mul-double/2addr v8, v10

    div-double/2addr v8, v6

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    .line 51
    .end local v14    # "totalTime":J
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    .line 52
    .local v8, "videoTimer":Landroid/os/BatteryStats$Timer;
    if-nez v8, :cond_1

    .line 53
    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    .line 54
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v8, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 57
    .local v9, "totalTime":J
    iput-wide v9, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    .line 58
    long-to-double v11, v9

    iget-wide v13, v0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    mul-double/2addr v11, v13

    div-double/2addr v11, v6

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    .line 60
    .end local v9    # "totalTime":J
    :goto_1
    return-void
.end method
