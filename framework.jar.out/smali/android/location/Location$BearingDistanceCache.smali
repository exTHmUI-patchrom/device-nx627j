.class Landroid/location/Location$BearingDistanceCache;
.super Ljava/lang/Object;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BearingDistanceCache"
.end annotation


# instance fields
.field private mDistance:F

.field private mFinalBearing:F

.field private mInitialBearing:F

.field private mLat1:D

.field private mLat2:D

.field private mLon1:D

.field private mLon2:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    .line 1191
    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    .line 1192
    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    .line 1193
    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    .line 1194
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    .line 1195
    iput v0, p0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    .line 1196
    iput v0, p0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/Location$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/location/Location$1;

    .line 1189
    invoke-direct {p0}, Landroid/location/Location$BearingDistanceCache;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/location/Location$BearingDistanceCache;)F
    .locals 1
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;

    .line 1189
    iget v0, p0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return v0
.end method

.method static synthetic access$102(Landroid/location/Location$BearingDistanceCache;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;
    .param p1, "x1"    # F

    .line 1189
    iput p1, p0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return p1
.end method

.method static synthetic access$200(Landroid/location/Location$BearingDistanceCache;)F
    .locals 1
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;

    .line 1189
    iget v0, p0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return v0
.end method

.method static synthetic access$202(Landroid/location/Location$BearingDistanceCache;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;
    .param p1, "x1"    # F

    .line 1189
    iput p1, p0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return p1
.end method

.method static synthetic access$300(Landroid/location/Location$BearingDistanceCache;)F
    .locals 1
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;

    .line 1189
    iget v0, p0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    return v0
.end method

.method static synthetic access$302(Landroid/location/Location$BearingDistanceCache;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;
    .param p1, "x1"    # F

    .line 1189
    iput p1, p0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    return p1
.end method

.method static synthetic access$400(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;

    .line 1189
    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    return-wide v0
.end method

.method static synthetic access$402(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;
    .param p1, "x1"    # D

    .line 1189
    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    return-wide p1
.end method

.method static synthetic access$500(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;

    .line 1189
    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    return-wide v0
.end method

.method static synthetic access$502(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;
    .param p1, "x1"    # D

    .line 1189
    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    return-wide p1
.end method

.method static synthetic access$600(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;

    .line 1189
    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    return-wide v0
.end method

.method static synthetic access$602(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;
    .param p1, "x1"    # D

    .line 1189
    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    return-wide p1
.end method

.method static synthetic access$700(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;

    .line 1189
    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    return-wide v0
.end method

.method static synthetic access$702(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location$BearingDistanceCache;
    .param p1, "x1"    # D

    .line 1189
    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    return-wide p1
.end method
