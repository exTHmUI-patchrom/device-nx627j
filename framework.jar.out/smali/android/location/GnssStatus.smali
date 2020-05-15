.class public final Landroid/location/GnssStatus;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssStatus$ConstellationType;,
        Landroid/location/GnssStatus$Callback;
    }
.end annotation


# static fields
.field public static final CONSTELLATION_BEIDOU:I = 0x5

.field public static final CONSTELLATION_GALILEO:I = 0x6

.field public static final CONSTELLATION_GLONASS:I = 0x3

.field public static final CONSTELLATION_GPS:I = 0x1

.field public static final CONSTELLATION_QZSS:I = 0x4

.field public static final CONSTELLATION_SBAS:I = 0x2

.field public static final CONSTELLATION_TYPE_MASK:I = 0xf

.field public static final CONSTELLATION_TYPE_SHIFT_WIDTH:I = 0x4

.field public static final CONSTELLATION_UNKNOWN:I = 0x0

.field public static final GNSS_SV_FLAGS_HAS_ALMANAC_DATA:I = 0x2

.field public static final GNSS_SV_FLAGS_HAS_CARRIER_FREQUENCY:I = 0x8

.field public static final GNSS_SV_FLAGS_HAS_EPHEMERIS_DATA:I = 0x1

.field public static final GNSS_SV_FLAGS_NONE:I = 0x0

.field public static final GNSS_SV_FLAGS_USED_IN_FIX:I = 0x4

.field public static final SVID_SHIFT_WIDTH:I = 0x8


# instance fields
.field final mAzimuths:[F

.field final mCarrierFrequencies:[F

.field final mCn0DbHz:[F

.field final mElevations:[F

.field final mSvCount:I

.field final mSvidWithFlags:[I


# direct methods
.method constructor <init>(I[I[F[F[F[F)V
    .locals 0
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFrequencies"    # [F

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Landroid/location/GnssStatus;->mSvCount:I

    .line 110
    iput-object p2, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    .line 111
    iput-object p3, p0, Landroid/location/GnssStatus;->mCn0DbHz:[F

    .line 112
    iput-object p4, p0, Landroid/location/GnssStatus;->mElevations:[F

    .line 113
    iput-object p5, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    .line 114
    iput-object p6, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    .line 115
    return-void
.end method


# virtual methods
.method public getAzimuthDegrees(I)F
    .locals 1
    .param p1, "satIndex"    # I

    .line 189
    iget-object v0, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    aget v0, v0, p1

    return v0
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 1
    .param p1, "satIndex"    # I

    .line 247
    iget-object v0, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    aget v0, v0, p1

    return v0
.end method

.method public getCn0DbHz(I)F
    .locals 1
    .param p1, "satIndex"    # I

    .line 171
    iget-object v0, p0, Landroid/location/GnssStatus;->mCn0DbHz:[F

    aget v0, v0, p1

    return v0
.end method

.method public getConstellationType(I)I
    .locals 1
    .param p1, "satIndex"    # I

    .line 131
    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getElevationDegrees(I)F
    .locals 1
    .param p1, "satIndex"    # I

    .line 180
    iget-object v0, p0, Landroid/location/GnssStatus;->mElevations:[F

    aget v0, v0, p1

    return v0
.end method

.method public getSatelliteCount()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/location/GnssStatus;->mSvCount:I

    return v0
.end method

.method public getSvid(I)I
    .locals 1
    .param p1, "satIndex"    # I

    .line 161
    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hasAlmanacData(I)Z
    .locals 1
    .param p1, "satIndex"    # I

    .line 207
    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 1
    .param p1, "satIndex"    # I

    .line 226
    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEphemerisData(I)Z
    .locals 2
    .param p1, "satIndex"    # I

    .line 198
    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public usedInFix(I)Z
    .locals 1
    .param p1, "satIndex"    # I

    .line 217
    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
