.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$BearingDistanceCache;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2

.field private static final HAS_ALTITUDE_MASK:I = 0x1

.field private static final HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final HAS_BEARING_MASK:I = 0x4

.field private static final HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final HAS_SPEED_MASK:I = 0x2

.field private static final HAS_VERTICAL_ACCURACY_MASK:I = 0x20

.field private static sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAltitude:D

.field private mBearing:F

.field private mBearingAccuracyDegrees:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mFieldsMask:B

.field private mHorizontalAccuracyMeters:F

.field private mLatitude:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mSpeed:F

.field private mSpeedAccuracyMetersPerSecond:F

.field private mTime:J

.field private mVerticalAccuracyMeters:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 1078
    new-instance v0, Landroid/location/Location$2;

    invoke-direct {v0}, Landroid/location/Location$2;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 127
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 129
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 130
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 132
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 133
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 134
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 135
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 136
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 141
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 159
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 127
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 129
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 130
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 132
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 133
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 134
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 135
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 136
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 141
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 152
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 153
    return-void
.end method

.method static synthetic access$1002(Landroid/location/Location;B)B
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # B

    .line 41
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    return p1
.end method

.method static synthetic access$1102(Landroid/location/Location;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$1202(Landroid/location/Location;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$1302(Landroid/location/Location;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$1402(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .line 41
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$1502(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .line 41
    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method static synthetic access$1602(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .line 41
    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return p1
.end method

.method static synthetic access$1702(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .line 41
    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return p1
.end method

.method static synthetic access$1802(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .line 41
    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return p1
.end method

.method static synthetic access$1902(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .line 41
    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return p1
.end method

.method static synthetic access$2002(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 41
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$802(Landroid/location/Location;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # J

    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/Location;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # J

    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method private static computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .locals 104
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # Landroid/location/Location$BearingDistanceCache;

    .line 337
    move-object/from16 v0, p8

    const/16 v1, 0x14

    .line 339
    .local v1, "MAXITERS":I
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v4, p0, v2

    .line 340
    .end local p0    # "lat1":D
    .local v4, "lat1":D
    mul-double v6, p4, v2

    .line 341
    .end local p4    # "lat2":D
    .local v6, "lat2":D
    mul-double v8, p2, v2

    .line 342
    .end local p2    # "lon1":D
    .local v8, "lon1":D
    mul-double v2, v2, p6

    .line 344
    .end local p6    # "lon2":D
    .local v2, "lon2":D
    const-wide v10, 0x415854a640000000L    # 6378137.0

    .line 345
    .local v10, "a":D
    const-wide v12, 0x41583fc4141bda51L    # 6356752.3142

    .line 346
    .local v12, "b":D
    sub-double v14, v10, v12

    div-double/2addr v14, v10

    .line 347
    .local v14, "f":D
    mul-double v16, v10, v10

    mul-double v18, v12, v12

    sub-double v16, v16, v18

    mul-double v18, v12, v12

    div-double v16, v16, v18

    .line 349
    .local v16, "aSqMinusBSqOverBSq":D
    sub-double v18, v2, v8

    .line 350
    .local v18, "L":D
    const-wide/16 v20, 0x0

    .line 351
    .local v20, "A":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v24, v22, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v26

    move-wide/from16 v28, v10

    mul-double v10, v24, v26

    .end local v10    # "a":D
    .local v28, "a":D
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    .line 352
    .local v10, "U1":D
    sub-double v24, v22, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v26

    move-wide/from16 v30, v2

    mul-double v2, v24, v26

    .end local v2    # "lon2":D
    .local v30, "lon2":D
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    .line 354
    .local v2, "U2":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 355
    .local v24, "cosU1":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 356
    .local v26, "cosU2":D
    move-wide/from16 v32, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 357
    .local v8, "sinU1":D
    .local v32, "lon1":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 358
    .local v34, "sinU2":D
    mul-double v36, v24, v26

    .line 359
    .local v36, "cosU1cosU2":D
    mul-double v38, v8, v34

    .line 361
    .local v38, "sinU1sinU2":D
    const-wide/16 v40, 0x0

    .line 362
    .local v40, "sigma":D
    const-wide/16 v42, 0x0

    .line 363
    .local v42, "deltaSigma":D
    const-wide/16 v44, 0x0

    .line 364
    .local v44, "cosSqAlpha":D
    const-wide/16 v46, 0x0

    .line 365
    .local v46, "cos2SM":D
    const-wide/16 v48, 0x0

    .line 366
    .local v48, "cosSigma":D
    const-wide/16 v50, 0x0

    .line 367
    .local v50, "sinSigma":D
    const-wide/16 v52, 0x0

    .line 368
    .local v52, "cosLambda":D
    const-wide/16 v54, 0x0

    .line 370
    .local v54, "sinLambda":D
    move-wide/from16 v56, v18

    .line 371
    .local v56, "lambda":D
    const/16 v58, 0x0

    move-wide/from16 v59, v56

    .end local v56    # "lambda":D
    .local v58, "iter":I
    .local v59, "lambda":D
    :goto_0
    move/from16 v61, v58

    .end local v58    # "iter":I
    .local v61, "iter":I
    move-wide/from16 v62, v2

    move/from16 v2, v61

    if-ge v2, v1, :cond_3

    .line 372
    .end local v61    # "iter":I
    .local v2, "iter":I
    .local v62, "U2":D
    move-wide/from16 v56, v59

    .line 373
    .local v56, "lambdaOrig":D
    move-wide/from16 v64, v10

    move-wide/from16 v10, v59

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v52

    .line 374
    .end local v59    # "lambda":D
    .local v10, "lambda":D
    .local v64, "U1":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v54

    .line 375
    mul-double v58, v26, v54

    .line 376
    .local v58, "t1":D
    mul-double v60, v24, v34

    mul-double v66, v8, v26

    mul-double v66, v66, v52

    sub-double v60, v60, v66

    .line 377
    .local v60, "t2":D
    mul-double v66, v58, v58

    mul-double v68, v60, v60

    move-wide/from16 v70, v10

    add-double v10, v66, v68

    .line 378
    .local v10, "sinSqSigma":D
    .local v70, "lambda":D
    move-wide/from16 v72, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 379
    .end local v50    # "sinSigma":D
    .local v6, "sinSigma":D
    .local v72, "lat2":D
    mul-double v50, v36, v52

    move-wide/from16 v74, v10

    add-double v10, v38, v50

    .line 380
    .end local v48    # "cosSigma":D
    .local v10, "cosSigma":D
    .local v74, "sinSqSigma":D
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v40

    .line 381
    const-wide/16 v48, 0x0

    cmpl-double v3, v6, v48

    if-nez v3, :cond_0

    .line 382
    move-wide/from16 v50, v48

    goto :goto_1

    :cond_0
    mul-double v50, v36, v54

    div-double v50, v50, v6

    .line 383
    .local v50, "sinAlpha":D
    :goto_1
    mul-double v66, v50, v50

    sub-double v44, v22, v66

    .line 384
    cmpl-double v3, v44, v48

    const-wide/high16 v66, 0x4000000000000000L    # 2.0

    if-nez v3, :cond_1

    goto :goto_2

    .line 385
    :cond_1
    mul-double v48, v66, v38

    div-double v48, v48, v44

    sub-double v48, v10, v48

    :goto_2
    move-wide/from16 v46, v48

    .line 387
    mul-double v48, v44, v16

    .line 388
    .local v48, "uSquared":D
    const-wide/high16 v68, 0x40d0000000000000L    # 16384.0

    div-double v68, v48, v68

    const-wide/high16 v76, 0x40b0000000000000L    # 4096.0

    const-wide/high16 v78, -0x3f78000000000000L    # -768.0

    const-wide/high16 v80, 0x4074000000000000L    # 320.0

    const-wide v82, 0x4065e00000000000L    # 175.0

    mul-double v82, v82, v48

    sub-double v80, v80, v82

    mul-double v80, v80, v48

    add-double v78, v78, v80

    mul-double v78, v78, v48

    add-double v76, v76, v78

    mul-double v68, v68, v76

    add-double v20, v22, v68

    .line 391
    const-wide/high16 v68, 0x4090000000000000L    # 1024.0

    div-double v68, v48, v68

    const-wide/high16 v76, 0x4070000000000000L    # 256.0

    const-wide/high16 v78, -0x3fa0000000000000L    # -128.0

    const-wide v80, 0x4052800000000000L    # 74.0

    const-wide v82, 0x4047800000000000L    # 47.0

    mul-double v82, v82, v48

    sub-double v80, v80, v82

    mul-double v80, v80, v48

    add-double v78, v78, v80

    mul-double v78, v78, v48

    add-double v76, v76, v78

    mul-double v68, v68, v76

    .line 394
    .local v68, "B":D
    const-wide/high16 v76, 0x4030000000000000L    # 16.0

    div-double v76, v14, v76

    mul-double v76, v76, v44

    const-wide/high16 v78, 0x4008000000000000L    # 3.0

    mul-double v78, v78, v44

    const-wide/high16 v80, 0x4010000000000000L    # 4.0

    sub-double v78, v80, v78

    mul-double v78, v78, v14

    add-double v78, v80, v78

    mul-double v76, v76, v78

    .line 397
    .local v76, "C":D
    mul-double v78, v46, v46

    .line 398
    .local v78, "cos2SMSq":D
    mul-double v82, v68, v6

    div-double v84, v68, v80

    mul-double v86, v66, v78

    const-wide/high16 v88, -0x4010000000000000L    # -1.0

    add-double v86, v88, v86

    mul-double v86, v86, v10

    const-wide/high16 v90, 0x4018000000000000L    # 6.0

    div-double v90, v68, v90

    mul-double v90, v90, v46

    mul-double v92, v80, v6

    mul-double v92, v92, v6

    const-wide/high16 v94, -0x3ff8000000000000L    # -3.0

    add-double v92, v94, v92

    mul-double v90, v90, v92

    mul-double v80, v80, v78

    add-double v94, v94, v80

    mul-double v90, v90, v94

    sub-double v86, v86, v90

    mul-double v84, v84, v86

    add-double v84, v46, v84

    mul-double v42, v82, v84

    .line 405
    sub-double v80, v22, v76

    mul-double v80, v80, v14

    mul-double v80, v80, v50

    mul-double v82, v76, v6

    mul-double v84, v76, v10

    mul-double v66, v66, v46

    mul-double v66, v66, v46

    add-double v88, v88, v66

    mul-double v84, v84, v88

    add-double v84, v46, v84

    mul-double v82, v82, v84

    add-double v82, v40, v82

    mul-double v80, v80, v82

    add-double v66, v18, v80

    .line 411
    .end local v70    # "lambda":D
    .local v66, "lambda":D
    sub-double v70, v66, v56

    move-wide/from16 v96, v6

    div-double v6, v70, v66

    .line 412
    .local v6, "delta":D
    .local v96, "sinSigma":D
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v70

    const-wide v80, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v3, v70, v80

    if-gez v3, :cond_2

    .line 413
    nop

    .line 417
    move-wide/from16 v70, v66

    goto :goto_3

    .line 371
    .end local v6    # "delta":D
    .end local v48    # "uSquared":D
    .end local v50    # "sinAlpha":D
    .end local v56    # "lambdaOrig":D
    .end local v58    # "t1":D
    .end local v60    # "t2":D
    .end local v68    # "B":D
    .end local v74    # "sinSqSigma":D
    .end local v76    # "C":D
    .end local v78    # "cos2SMSq":D
    :cond_2
    add-int/lit8 v58, v2, 0x1

    .end local v2    # "iter":I
    .local v58, "iter":I
    move-wide/from16 v48, v10

    move-wide/from16 v2, v62

    move-wide/from16 v10, v64

    move-wide/from16 v59, v66

    move-wide/from16 v6, v72

    move-wide/from16 v50, v96

    goto/16 :goto_0

    .line 417
    .end local v58    # "iter":I
    .end local v64    # "U1":D
    .end local v66    # "lambda":D
    .end local v72    # "lat2":D
    .end local v96    # "sinSigma":D
    .local v6, "lat2":D
    .local v10, "U1":D
    .local v48, "cosSigma":D
    .local v50, "sinSigma":D
    .restart local v59    # "lambda":D
    :cond_3
    move-wide/from16 v72, v6

    move-wide/from16 v64, v10

    move-wide/from16 v70, v59

    move-wide/from16 v10, v48

    move-wide/from16 v96, v50

    .end local v6    # "lat2":D
    .end local v48    # "cosSigma":D
    .end local v50    # "sinSigma":D
    .end local v59    # "lambda":D
    .local v10, "cosSigma":D
    .restart local v64    # "U1":D
    .restart local v70    # "lambda":D
    .restart local v72    # "lat2":D
    .restart local v96    # "sinSigma":D
    :goto_3
    mul-double v2, v12, v20

    sub-double v6, v40, v42

    mul-double/2addr v2, v6

    double-to-float v2, v2

    .line 418
    .local v2, "distance":F
    invoke-static {v0, v2}, Landroid/location/Location$BearingDistanceCache;->access$102(Landroid/location/Location$BearingDistanceCache;F)F

    .line 419
    mul-double v6, v26, v54

    mul-double v22, v24, v34

    mul-double v48, v8, v26

    mul-double v48, v48, v52

    move/from16 v98, v1

    move/from16 v99, v2

    sub-double v1, v22, v48

    .end local v1    # "MAXITERS":I
    .end local v2    # "distance":F
    .local v98, "MAXITERS":I
    .local v99, "distance":F
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 421
    .local v1, "initialBearing":F
    float-to-double v2, v1

    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v6

    double-to-float v1, v2

    .line 422
    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->access$202(Landroid/location/Location$BearingDistanceCache;F)F

    .line 423
    mul-double v2, v24, v54

    neg-double v6, v8

    mul-double v6, v6, v26

    mul-double v22, v24, v34

    mul-double v22, v22, v52

    add-double v6, v6, v22

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 425
    .local v2, "finalBearing":F
    float-to-double v6, v2

    const-wide v22, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v6, v6, v22

    double-to-float v2, v6

    .line 426
    invoke-static {v0, v2}, Landroid/location/Location$BearingDistanceCache;->access$302(Landroid/location/Location$BearingDistanceCache;F)F

    .line 427
    invoke-static {v0, v4, v5}, Landroid/location/Location$BearingDistanceCache;->access$402(Landroid/location/Location$BearingDistanceCache;D)D

    .line 428
    move-wide/from16 v6, v72

    invoke-static {v0, v6, v7}, Landroid/location/Location$BearingDistanceCache;->access$502(Landroid/location/Location$BearingDistanceCache;D)D

    .line 429
    .end local v72    # "lat2":D
    .restart local v6    # "lat2":D
    move/from16 v100, v1

    move/from16 v101, v2

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->access$602(Landroid/location/Location$BearingDistanceCache;D)D

    .line 430
    .end local v2    # "finalBearing":F
    .end local v32    # "lon1":D
    .local v1, "lon1":D
    .local v100, "initialBearing":F
    .local v101, "finalBearing":F
    move-wide/from16 v102, v1

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->access$702(Landroid/location/Location$BearingDistanceCache;D)D

    .line 431
    .end local v30    # "lon2":D
    .local v1, "lon2":D
    .local v102, "lon1":D
    return-void
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 19
    .param p0, "coordinate"    # Ljava/lang/String;

    .line 266
    move-object/from16 v0, p0

    if-eqz v0, :cond_c

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "negative":Z
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 272
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .end local p0    # "coordinate":Ljava/lang/String;
    .local v0, "coordinate":Ljava/lang/String;
    const/4 v1, 0x1

    .line 276
    .end local v0    # "coordinate":Ljava/lang/String;
    .local v1, "coordinate":Ljava/lang/String;
    .local v3, "negative":Z
    :cond_0
    move v3, v1

    move-object v1, v0

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 277
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 278
    .local v6, "tokens":I
    if-lt v6, v5, :cond_b

    .line 282
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 284
    .local v0, "degrees":Ljava/lang/String;
    if-ne v6, v5, :cond_2

    .line 285
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    .local v7, "val":D
    if-eqz v3, :cond_1

    neg-double v9, v7

    goto :goto_0

    :cond_1
    move-wide v9, v7

    :goto_0
    return-wide v9

    .line 327
    .end local v0    # "degrees":Ljava/lang/String;
    .end local v7    # "val":D
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_4

    .line 289
    .restart local v0    # "degrees":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "minutes":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 292
    .local v8, "deg":I
    const-wide/16 v9, 0x0

    .line 293
    .local v9, "sec":D
    const/4 v11, 0x0

    .line 295
    .local v11, "secPresent":Z
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v12, :cond_3

    .line 296
    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-double v12, v12

    .line 297
    .local v12, "min":D
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 298
    .local v14, "seconds":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-wide v9, v15

    .line 299
    const/4 v11, 0x1

    .line 300
    .end local v14    # "seconds":Ljava/lang/String;
    goto :goto_1

    .line 301
    .end local v12    # "min":D
    :cond_3
    :try_start_4
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 304
    .restart local v12    # "min":D
    :goto_1
    const-wide/16 v14, 0x0

    if-eqz v3, :cond_4

    const/16 v2, 0xb4

    if-ne v8, v2, :cond_4

    cmpl-double v2, v12, v14

    if-nez v2, :cond_4

    cmpl-double v2, v9, v14

    if-nez v2, :cond_4

    move/from16 v17, v5

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    :goto_2
    move/from16 v2, v17

    .line 308
    .local v2, "isNegative180":Z
    move-object/from16 v18, v4

    int-to-double v4, v8

    .end local v4    # "st":Ljava/util/StringTokenizer;
    .local v18, "st":Ljava/util/StringTokenizer;
    cmpg-double v4, v4, v14

    if-ltz v4, :cond_a

    const/16 v4, 0xb3

    if-le v8, v4, :cond_5

    if-eqz v2, :cond_a

    .line 313
    :cond_5
    cmpg-double v4, v12, v14

    if-ltz v4, :cond_9

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v16, v12, v4

    if-gez v16, :cond_9

    if-eqz v11, :cond_6

    const-wide v16, 0x404d800000000000L    # 59.0

    cmpl-double v16, v12, v16

    if-gtz v16, :cond_9

    .line 319
    :cond_6
    cmpg-double v14, v9, v14

    if-ltz v14, :cond_8

    cmpl-double v14, v9, v4

    if-gez v14, :cond_8

    .line 324
    int-to-double v14, v8

    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v14, v14, v16

    mul-double/2addr v4, v12

    add-double/2addr v14, v4

    add-double/2addr v14, v9

    .line 325
    .local v14, "val":D
    div-double v14, v14, v16

    .line 326
    if-eqz v3, :cond_7

    neg-double v4, v14

    goto :goto_3

    :cond_7
    move-wide v4, v14

    :goto_3
    return-wide v4

    .line 320
    .end local v14    # "val":D
    :cond_8
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "coordinate="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "coordinate="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "coordinate="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 327
    .end local v0    # "degrees":Ljava/lang/String;
    .end local v2    # "isNegative180":Z
    .end local v7    # "minutes":Ljava/lang/String;
    .end local v8    # "deg":I
    .end local v9    # "sec":D
    .end local v11    # "secPresent":Z
    .end local v12    # "min":D
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v18    # "st":Ljava/util/StringTokenizer;
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    .line 328
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    :goto_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coordinate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    :cond_b
    move-object/from16 v18, v4

    .end local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coordinate="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    .end local v1    # "coordinate":Ljava/lang/String;
    .end local v3    # "negative":Z
    .end local v6    # "tokens":I
    .end local v18    # "st":Ljava/util/StringTokenizer;
    .restart local p0    # "coordinate":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "coordinate"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 9
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .line 216
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_5

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_5

    .line 217
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    .line 220
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "outputType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_2

    .line 230
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    neg-double p0, p0

    .line 234
    :cond_2
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "df":Ljava/text/DecimalFormat;
    if-eq p2, v0, :cond_3

    if-ne p2, v1, :cond_4

    .line 236
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 237
    .local v0, "degrees":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    int-to-double v5, v0

    sub-double/2addr p0, v5

    .line 240
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v5

    .line 241
    if-ne p2, v1, :cond_4

    .line 242
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    .line 243
    .local v1, "minutes":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    int-to-double v7, v1

    sub-double/2addr p0, v7

    .line 246
    mul-double/2addr p0, v5

    .line 249
    .end local v0    # "degrees":I
    .end local v1    # "minutes":I
    :cond_4
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "df":Ljava/text/DecimalFormat;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 12
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    .line 453
    move-object/from16 v0, p8

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 456
    sget-object v1, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location$BearingDistanceCache;

    .line 457
    .local v1, "cache":Landroid/location/Location$BearingDistanceCache;
    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object v11, v1

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 459
    const/4 v3, 0x0

    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$100(Landroid/location/Location$BearingDistanceCache;)F

    move-result v4

    aput v4, v0, v3

    .line 460
    array-length v3, v0

    if-le v3, v2, :cond_0

    .line 461
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$200(Landroid/location/Location$BearingDistanceCache;)F

    move-result v3

    aput v3, v0, v2

    .line 462
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 463
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$300(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    aput v2, v0, v3

    .line 466
    :cond_0
    return-void

    .line 454
    .end local v1    # "cache":Landroid/location/Location$BearingDistanceCache;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "results is null or has length < 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    .line 498
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    .line 500
    .local v0, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$400(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$600(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    .line 501
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$500(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$700(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 505
    :cond_1
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$200(Landroid/location/Location$BearingDistanceCache;)F

    move-result v1

    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 1108
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    .line 477
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    .line 479
    .local v0, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$400(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$600(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    .line 480
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$500(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$700(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 481
    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 484
    :cond_1
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$100(Landroid/location/Location$BearingDistanceCache;)F

    move-result v1

    return v1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .line 777
    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .line 631
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .line 715
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getBearingAccuracyDegrees()F
    .locals 1

    .line 942
    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .line 571
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1140
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 1141
    move-object v1, v0

    check-cast v1, Landroid/location/Location;

    return-object v1

    .line 1144
    .end local v0    # "value":Landroid/os/Parcelable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1028
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 590
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 607
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 671
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getSpeedAccuracyMetersPerSecond()F
    .locals 1

    .line 888
    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 542
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public getVerticalAccuracyMeters()F
    .locals 1

    .line 830
    iget v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .line 757
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    .line 621
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasBearing()Z
    .locals 1

    .line 702
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBearingAccuracy()Z
    .locals 1

    .line 922
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    .line 662
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeedAccuracy()Z
    .locals 1

    .line 864
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVerticalAccuracy()Z
    .locals 1

    .line 810
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 986
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 987
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 988
    :cond_1
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    .line 989
    :cond_2
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    return v1

    .line 990
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isFromMockProvider()Z
    .locals 1

    .line 1167
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeComplete()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1004
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 1005
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 1007
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 1009
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 1010
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 1011
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 803
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 804
    return-void
.end method

.method public removeAltitude()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 655
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 656
    return-void
.end method

.method public removeBearing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 748
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 749
    return-void
.end method

.method public removeBearingAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 968
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 969
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit16 v0, v0, -0x81

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 970
    return-void
.end method

.method public removeSpeed()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 695
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 696
    return-void
.end method

.method public removeSpeedAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 914
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 915
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 916
    return-void
.end method

.method public removeVerticalAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 857
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 858
    return-void
.end method

.method public reset()V
    .locals 3

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 187
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mTime:J

    .line 188
    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 189
    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 190
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 191
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 192
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 194
    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 195
    iput v1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 196
    iput v1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 197
    iput v1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 198
    iput v1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 199
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .line 166
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 167
    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 168
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 169
    iget-byte v0, p1, Landroid/location/Location;->mFieldsMask:B

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 170
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 171
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 172
    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 173
    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 174
    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 175
    iget v0, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 176
    iget v0, p1, Landroid/location/Location;->mVerticalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 177
    iget v0, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 178
    iget v0, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 179
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 180
    return-void
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "horizontalAccuracy"    # F

    .line 788
    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 789
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 790
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .line 640
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 641
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 642
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    .line 727
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    .line 728
    add-float/2addr p1, v1

    goto :goto_0

    .line 730
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 731
    sub-float/2addr p1, v1

    goto :goto_1

    .line 733
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 734
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 735
    return-void
.end method

.method public setBearingAccuracyDegrees(F)V
    .locals 1
    .param p1, "bearingAccuracyDegrees"    # F

    .line 953
    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 954
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 955
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 0
    .param p1, "time"    # J

    .line 580
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 581
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    .line 1155
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 1158
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1159
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1036
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 1037
    return-void
.end method

.method public setIsFromMockProvider(Z)V
    .locals 1
    .param p1, "isFromMockProvider"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    goto :goto_0

    .line 1181
    :cond_0
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 1183
    :goto_0
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .line 597
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 598
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .line 614
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 615
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 521
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 680
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 681
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 682
    return-void
.end method

.method public setSpeedAccuracyMetersPerSecond(F)V
    .locals 1
    .param p1, "speedAccuracyMeterPerSecond"    # F

    .line 899
    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 900
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 901
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 552
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 553
    return-void
.end method

.method public setVerticalAccuracyMeters(F)V
    .locals 1
    .param p1, "verticalAccuracyMeters"    # F

    .line 841
    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 842
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 843
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1042
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    const-string v1, " %.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v5, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " hAcc=%.0f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1046
    :cond_0
    const-string v1, " hAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    :goto_0
    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 1048
    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :cond_1
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_2

    .line 1051
    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1053
    :cond_2
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v1, v6

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1056
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1057
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1058
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1059
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " vAcc=%.0f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1060
    :cond_6
    const-string v1, " vAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :goto_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " sAcc=%.0f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1062
    :cond_7
    const-string v1, " sAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :goto_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " bAcc=%.0f"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1064
    :cond_8
    const-string v1, " bAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    :goto_4
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    :cond_9
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 1068
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1070
    :cond_a
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1113
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1115
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1116
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1117
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1118
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1119
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1120
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1121
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1122
    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1123
    iget v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1124
    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1125
    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1126
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1127
    return-void
.end method
