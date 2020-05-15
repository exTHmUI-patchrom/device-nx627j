.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff

.field private static final SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 150
    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsStatus;

    .line 33
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method private clearSatellites()V
    .locals 4

    .line 244
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 245
    .local v0, "satellitesCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 246
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 247
    .local v3, "satellite":Landroid/location/GpsSatellite;
    iput-boolean v1, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 245
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private setStatus(I[I[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    .line 154
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 155
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 156
    aget v2, p2, v1

    const/4 v3, 0x4

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    .line 159
    .local v2, "constellationType":I
    aget v4, p2, v1

    shr-int/lit8 v4, v4, 0x8

    .line 166
    .local v4, "prn":I
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_0

    .line 167
    add-int/lit8 v4, v4, 0x40

    goto :goto_1

    .line 168
    :cond_0
    const/4 v5, 0x5

    if-ne v2, v5, :cond_1

    .line 169
    add-int/lit16 v4, v4, 0xc8

    goto :goto_1

    .line 170
    :cond_1
    if-ne v2, v6, :cond_2

    .line 171
    add-int/lit8 v4, v4, -0x57

    goto :goto_1

    .line 172
    :cond_2
    if-eq v2, v7, :cond_3

    if-eq v2, v3, :cond_3

    .line 174
    goto :goto_5

    .line 176
    :cond_3
    :goto_1
    if-lez v4, :cond_8

    const/16 v5, 0xff

    if-gt v4, v5, :cond_8

    .line 177
    iget-object v5, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    .line 178
    .local v5, "satellite":Landroid/location/GpsSatellite;
    if-nez v5, :cond_4

    .line 179
    new-instance v8, Landroid/location/GpsSatellite;

    invoke-direct {v8, v4}, Landroid/location/GpsSatellite;-><init>(I)V

    move-object v5, v8

    .line 180
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :cond_4
    iput-boolean v7, v5, Landroid/location/GpsSatellite;->mValid:Z

    .line 184
    aget v8, p3, v1

    iput v8, v5, Landroid/location/GpsSatellite;->mSnr:F

    .line 185
    aget v8, p4, v1

    iput v8, v5, Landroid/location/GpsSatellite;->mElevation:F

    .line 186
    aget v8, p5, v1

    iput v8, v5, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 187
    aget v8, p2, v1

    and-int/2addr v8, v7

    if-eqz v8, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_2
    iput-boolean v8, v5, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 189
    aget v8, p2, v1

    and-int/2addr v6, v8

    if-eqz v6, :cond_6

    move v6, v7

    goto :goto_3

    :cond_6
    move v6, v0

    :goto_3
    iput-boolean v6, v5, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 191
    aget v6, p2, v1

    and-int/2addr v3, v6

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v7, v0

    :goto_4
    iput-boolean v7, v5, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 155
    .end local v2    # "constellationType":I
    .end local v4    # "prn":I
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_9
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .line 240
    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .line 220
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method setStatus(Landroid/location/GnssStatus;I)V
    .locals 6
    .param p1, "status"    # Landroid/location/GnssStatus;
    .param p2, "timeToFirstFix"    # I

    .line 204
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 205
    iget v1, p1, Landroid/location/GnssStatus;->mSvCount:I

    iget-object v2, p1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iget-object v3, p1, Landroid/location/GnssStatus;->mCn0DbHz:[F

    iget-object v4, p1, Landroid/location/GnssStatus;->mElevations:[F

    iget-object v5, p1, Landroid/location/GnssStatus;->mAzimuths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F)V

    .line 207
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .line 210
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 211
    return-void
.end method
