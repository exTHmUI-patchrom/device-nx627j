.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:S = 0x8s

.field private static final HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final HAS_DRIFT:S = 0x20s

.field private static final HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final HAS_FULL_BIAS:S = 0x4s

.field private static final HAS_LEAP_SECOND:S = 0x1s

.field private static final HAS_NO_FLAGS:S = 0x0s

.field private static final HAS_TIME_UNCERTAINTY:S = 0x2s

.field public static final TYPE_GPS_TIME:B = 0x2t

.field public static final TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mBiasInNs:D

.field private mBiasUncertaintyInNs:D

.field private mDriftInNsPerSec:D

.field private mDriftUncertaintyInNsPerSec:D

.field private mFlags:S

.field private mFullBiasInNs:J

.field private mLeapSecond:S

.field private mTimeInNs:J

.field private mTimeUncertaintyInNs:D

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 397
    new-instance v0, Landroid/location/GpsClock$1;

    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    .line 74
    return-void
.end method

.method static synthetic access$002(Landroid/location/GpsClock;S)S
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # S

    .line 30
    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return p1
.end method

.method static synthetic access$102(Landroid/location/GpsClock;S)S
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # S

    .line 30
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return p1
.end method

.method static synthetic access$202(Landroid/location/GpsClock;B)B
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # B

    .line 30
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return p1
.end method

.method static synthetic access$302(Landroid/location/GpsClock;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # J

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GpsClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GpsClock;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # J

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GpsClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GpsClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GpsClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GpsClock;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/GpsClock;
    .param p1, "x1"    # D

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide p1
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    .line 118
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_0
    const-string v0, "GpsTime"

    return-object v0

    .line 124
    :pswitch_1
    const-string v0, "LocalHwClock"

    return-object v0

    .line 120
    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .line 480
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 481
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    .line 482
    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    .line 483
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    .line 484
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    .line 485
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetFullBiasInNs()V

    .line 486
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    .line 487
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    .line 488
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    .line 489
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    .line 490
    return-void
.end method

.method private isFlagSet(S)Z
    .locals 1
    .param p1, "flag"    # S

    .line 501
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetFlag(S)V
    .locals 2
    .param p1, "flag"    # S

    .line 497
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    not-int v1, p1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 498
    return-void
.end method

.method private setFlag(S)V
    .locals 1
    .param p1, "flag"    # S

    .line 493
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 494
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getBiasInNs()D
    .locals 2

    .line 280
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide v0
.end method

.method public getBiasUncertaintyInNs()D
    .locals 2

    .line 312
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide v0
.end method

.method public getDriftInNsPerSec()D
    .locals 2

    .line 346
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide v0
.end method

.method public getDriftUncertaintyInNsPerSec()D
    .locals 2

    .line 378
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide v0
.end method

.method public getFullBiasInNs()J
    .locals 2

    .line 247
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide v0
.end method

.method public getLeapSecond()S
    .locals 1

    .line 145
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return v0
.end method

.method public getTimeInNs()J
    .locals 2

    .line 182
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide v0
.end method

.method public getTimeUncertaintyInNs()D
    .locals 2

    .line 206
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide v0
.end method

.method public getType()B
    .locals 1

    .line 103
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    return v0
.end method

.method public hasBiasInNs()Z
    .locals 1

    .line 270
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyInNs()Z
    .locals 1

    .line 303
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftInNsPerSec()Z
    .locals 1

    .line 335
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyInNsPerSec()Z
    .locals 1

    .line 369
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasInNs()Z
    .locals 1

    .line 229
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyInNs()Z
    .locals 1

    .line 196
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    .line 96
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    .line 97
    return-void
.end method

.method public resetBiasInNs()V
    .locals 2

    .line 295
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 296
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 297
    return-void
.end method

.method public resetBiasUncertaintyInNs()V
    .locals 2

    .line 327
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 328
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 329
    return-void
.end method

.method public resetDriftInNsPerSec()V
    .locals 2

    .line 361
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 362
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 363
    return-void
.end method

.method public resetDriftUncertaintyInNsPerSec()V
    .locals 2

    .line 393
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 394
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 395
    return-void
.end method

.method public resetFullBiasInNs()V
    .locals 2

    .line 262
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 263
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 264
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 161
    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 162
    return-void
.end method

.method public resetTimeUncertaintyInNs()V
    .locals 2

    .line 221
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 222
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 223
    return-void
.end method

.method public set(Landroid/location/GpsClock;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GpsClock;

    .line 80
    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 81
    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 82
    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    .line 83
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 84
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 85
    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 86
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 87
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 88
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 89
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 90
    return-void
.end method

.method public setBiasInNs(D)V
    .locals 1
    .param p1, "biasInNs"    # D

    .line 287
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 288
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 289
    return-void
.end method

.method public setBiasUncertaintyInNs(D)V
    .locals 1
    .param p1, "biasUncertaintyInNs"    # D

    .line 319
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 320
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 321
    return-void
.end method

.method public setDriftInNsPerSec(D)V
    .locals 1
    .param p1, "driftInNsPerSec"    # D

    .line 353
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 354
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 355
    return-void
.end method

.method public setDriftUncertaintyInNsPerSec(D)V
    .locals 1
    .param p1, "driftUncertaintyInNsPerSec"    # D

    .line 385
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 386
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 387
    return-void
.end method

.method public setFullBiasInNs(J)V
    .locals 1
    .param p1, "value"    # J

    .line 254
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 255
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 256
    return-void
.end method

.method public setLeapSecond(S)V
    .locals 1
    .param p1, "leapSecond"    # S

    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 153
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 154
    return-void
.end method

.method public setTimeInNs(J)V
    .locals 0
    .param p1, "timeInNs"    # J

    .line 189
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 190
    return-void
.end method

.method public setTimeUncertaintyInNs(D)V
    .locals 1
    .param p1, "timeUncertaintyInNs"    # D

    .line 213
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 214
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 215
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "value"    # B

    .line 110
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 442
    const-string v0, "   %-15s = %s\n"

    .line 443
    .local v0, "format":Ljava/lang/String;
    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 444
    .local v1, "formatWithUncertainty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GpsClock:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "   %-15s = %s\n"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Type"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v3, "   %-15s = %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "LeapSecond"

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    iget-short v6, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v9

    :goto_0
    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v3, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const-string v10, "TimeInNs"

    aput-object v10, v6, v7

    iget-wide v10, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 453
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v8

    const-string v10, "TimeUncertaintyInNs"

    aput-object v10, v6, v4

    .line 455
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-wide v10, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    const/4 v11, 0x3

    aput-object v10, v6, v11

    .line 450
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v3, "   %-15s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v10, "FullBiasInNs"

    aput-object v10, v6, v7

    .line 460
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-wide v12, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v9

    :goto_2
    aput-object v10, v6, v8

    .line 457
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v3, "   %-15s = %-25s   %-26s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v10, "BiasInNs"

    aput-object v10, v6, v7

    .line 465
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-wide v12, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object v10, v9

    :goto_3
    aput-object v10, v6, v8

    const-string v10, "BiasUncertaintyInNs"

    aput-object v10, v6, v4

    .line 467
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-wide v12, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_4

    :cond_4
    move-object v10, v9

    :goto_4
    aput-object v10, v6, v11

    .line 462
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v3, "   %-15s = %-25s   %-26s = %s\n"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "DriftInNsPerSec"

    aput-object v6, v5, v7

    .line 472
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object v6, v9

    :goto_5
    aput-object v6, v5, v8

    const-string v6, "DriftUncertaintyInNsPerSec"

    aput-object v6, v5, v4

    .line 474
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-wide v6, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    nop

    :cond_6
    aput-object v9, v5, v11

    .line 469
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 423
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 426
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 428
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 429
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 430
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 431
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 432
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 433
    return-void
.end method
