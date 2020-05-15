.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:I = 0x8

.field private static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final HAS_DRIFT:I = 0x20

.field private static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final HAS_FULL_BIAS:I = 0x4

.field private static final HAS_LEAP_SECOND:I = 0x1

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private mBiasNanos:D

.field private mBiasUncertaintyNanos:D

.field private mDriftNanosPerSecond:D

.field private mDriftUncertaintyNanosPerSecond:D

.field private mFlags:I

.field private mFullBiasNanos:J

.field private mHardwareClockDiscontinuityCount:I

.field private mLeapSecond:I

.field private mTimeNanos:J

.field private mTimeUncertaintyNanos:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 434
    new-instance v0, Landroid/location/GnssClock$1;

    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    .line 59
    return-void
.end method

.method static synthetic access$002(Landroid/location/GnssClock;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return p1
.end method

.method static synthetic access$102(Landroid/location/GnssClock;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return p1
.end method

.method static synthetic access$202(Landroid/location/GnssClock;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # J

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/GnssClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # D

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GnssClock;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # J

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GnssClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # D

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GnssClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # D

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GnssClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # D

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GnssClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # D

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GnssClock;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssClock;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return p1
.end method

.method private initialize()V
    .locals 2

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 522
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    .line 523
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    .line 524
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    .line 525
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    .line 526
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    .line 527
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    .line 528
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    .line 529
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    .line 530
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    .line 531
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 542
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 538
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 539
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 534
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 535
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getBiasNanos()D
    .locals 2

    .line 261
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide v0
.end method

.method public getBiasUncertaintyNanos()D
    .locals 2

    .line 301
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public getDriftNanosPerSecond()D
    .locals 2

    .line 345
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide v0
.end method

.method public getDriftUncertaintyNanosPerSecond()D
    .locals 2

    .line 383
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide v0
.end method

.method public getFullBiasNanos()J
    .locals 2

    .line 219
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide v0
.end method

.method public getHardwareClockDiscontinuityCount()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return v0
.end method

.method public getLeapSecond()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return v0
.end method

.method public getTimeNanos()J
    .locals 2

    .line 140
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide v0
.end method

.method public getTimeUncertaintyNanos()D
    .locals 2

    .line 171
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide v0
.end method

.method public hasBiasNanos()Z
    .locals 1

    .line 246
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyNanos()Z
    .locals 1

    .line 289
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftNanosPerSecond()Z
    .locals 1

    .line 329
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .locals 1

    .line 373
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasNanos()Z
    .locals 1

    .line 198
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyNanos()Z
    .locals 1

    .line 157
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    .line 86
    return-void
.end method

.method public resetBiasNanos()V
    .locals 2

    .line 280
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 281
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 282
    return-void
.end method

.method public resetBiasUncertaintyNanos()V
    .locals 2

    .line 320
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 321
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 322
    return-void
.end method

.method public resetDriftNanosPerSecond()V
    .locals 2

    .line 364
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 365
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 366
    return-void
.end method

.method public resetDriftUncertaintyNanosPerSecond()V
    .locals 2

    .line 402
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 403
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 404
    return-void
.end method

.method public resetFullBiasNanos()V
    .locals 2

    .line 238
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 239
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 240
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 125
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 126
    return-void
.end method

.method public resetTimeUncertaintyNanos()V
    .locals 2

    .line 190
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 191
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 192
    return-void
.end method

.method public set(Landroid/location/GnssClock;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GnssClock;

    .line 67
    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 68
    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 69
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 70
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 71
    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 72
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 73
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 74
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 75
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 76
    iget v0, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    iput v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 77
    return-void
.end method

.method public setBiasNanos(D)V
    .locals 1
    .param p1, "biasNanos"    # D

    .line 270
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 271
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 272
    return-void
.end method

.method public setBiasUncertaintyNanos(D)V
    .locals 1
    .param p1, "biasUncertaintyNanos"    # D

    .line 310
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 311
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 312
    return-void
.end method

.method public setDriftNanosPerSecond(D)V
    .locals 1
    .param p1, "driftNanosPerSecond"    # D

    .line 354
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 355
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 356
    return-void
.end method

.method public setDriftUncertaintyNanosPerSecond(D)V
    .locals 1
    .param p1, "driftUncertaintyNanosPerSecond"    # D

    .line 392
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 393
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 394
    return-void
.end method

.method public setFullBiasNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .line 228
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 229
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 230
    return-void
.end method

.method public setHardwareClockDiscontinuityCount(I)V
    .locals 0
    .param p1, "value"    # I

    .line 431
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 432
    return-void
.end method

.method public setLeapSecond(I)V
    .locals 1
    .param p1, "leapSecond"    # I

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 115
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 116
    return-void
.end method

.method public setTimeNanos(J)V
    .locals 0
    .param p1, "timeNanos"    # J

    .line 149
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 150
    return-void
.end method

.method public setTimeUncertaintyNanos(D)V
    .locals 1
    .param p1, "timeUncertaintyNanos"    # D

    .line 180
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 181
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 480
    const-string v0, "   %-15s = %s\n"

    .line 481
    .local v0, "format":Ljava/lang/String;
    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 482
    .local v1, "formatWithUncertainty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GnssClock:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "   %-15s = %s\n"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "LeapSecond"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    iget v6, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v8

    :goto_0
    const/4 v9, 0x1

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v3, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const-string v10, "TimeNanos"

    aput-object v10, v6, v7

    iget-wide v10, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 489
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    const-string v10, "TimeUncertaintyNanos"

    aput-object v10, v6, v4

    .line 491
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-wide v10, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v8

    :goto_1
    const/4 v11, 0x3

    aput-object v10, v6, v11

    .line 486
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v3, "   %-15s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v10, "FullBiasNanos"

    aput-object v10, v6, v7

    .line 496
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-wide v12, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v8

    :goto_2
    aput-object v10, v6, v9

    .line 493
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v3, "   %-15s = %-25s   %-26s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v10, "BiasNanos"

    aput-object v10, v6, v7

    .line 501
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-wide v12, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object v10, v8

    :goto_3
    aput-object v10, v6, v9

    const-string v10, "BiasUncertaintyNanos"

    aput-object v10, v6, v4

    .line 503
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-wide v12, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_4

    :cond_4
    move-object v10, v8

    :goto_4
    aput-object v10, v6, v11

    .line 498
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v3, "   %-15s = %-25s   %-26s = %s\n"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "DriftNanosPerSecond"

    aput-object v6, v5, v7

    .line 508
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v12, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object v6, v8

    :goto_5
    aput-object v6, v5, v9

    const-string v6, "DriftUncertaintyNanosPerSecond"

    aput-object v6, v5, v4

    .line 510
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-wide v12, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    nop

    :cond_6
    aput-object v8, v5, v11

    .line 505
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v3, "   %-15s = %s\n"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "HardwareClockDiscontinuityCount"

    aput-object v5, v4, v7

    iget v5, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 515
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 512
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 461
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 464
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 465
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 466
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 467
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 468
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 469
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 470
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    return-void
.end method
