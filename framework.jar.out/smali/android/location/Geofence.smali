.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_HORIZONTAL_CIRCLE:I = 0x1


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:F

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Landroid/location/Geofence$1;

    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(DDF)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p5}, Landroid/location/Geofence;->checkRadius(F)V

    .line 53
    invoke-static {p1, p2, p3, p4}, Landroid/location/Geofence;->checkLatLong(DD)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/location/Geofence;->mType:I

    .line 55
    iput-wide p1, p0, Landroid/location/Geofence;->mLatitude:D

    .line 56
    iput-wide p3, p0, Landroid/location/Geofence;->mLongitude:D

    .line 57
    iput p5, p0, Landroid/location/Geofence;->mRadius:F

    .line 58
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 29
    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    return-void
.end method

.method private static checkLatLong(DD)V
    .locals 3
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .line 87
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_1

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_1

    .line 90
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_0

    .line 93
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkRadius(F)V
    .locals 3
    .param p0, "radius"    # F

    .line 81
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_0

    .line 84
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkType(I)V
    .locals 3
    .param p0, "type"    # I

    .line 96
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 99
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCircle(DDF)Landroid/location/Geofence;
    .locals 7
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # F

    .line 48
    new-instance v6, Landroid/location/Geofence;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/location/Geofence;-><init>(DDF)V

    return-object v6
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 131
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 135
    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    const-string v0, "CIRCLE"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 166
    return v0

    .line 167
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 168
    return v1

    .line 169
    :cond_1
    instance-of v2, p1, Landroid/location/Geofence;

    if-nez v2, :cond_2

    .line 170
    return v1

    .line 171
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/location/Geofence;

    .line 172
    .local v2, "other":Landroid/location/Geofence;
    iget v3, p0, Landroid/location/Geofence;->mRadius:F

    iget v4, v2, Landroid/location/Geofence;->mRadius:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 173
    return v1

    .line 174
    :cond_3
    iget-wide v3, p0, Landroid/location/Geofence;->mLatitude:D

    iget-wide v5, v2, Landroid/location/Geofence;->mLatitude:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    .line 175
    return v1

    .line 176
    :cond_4
    iget-wide v3, p0, Landroid/location/Geofence;->mLongitude:D

    iget-wide v5, v2, Landroid/location/Geofence;->mLongitude:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5

    .line 177
    return v1

    .line 178
    :cond_5
    iget v3, p0, Landroid/location/Geofence;->mType:I

    iget v4, v2, Landroid/location/Geofence;->mType:I

    if-eq v3, v4, :cond_6

    .line 179
    return v1

    .line 180
    :cond_6
    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 67
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 72
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    .line 77
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/location/Geofence;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 148
    const/16 v0, 0x1f

    .line 149
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 151
    .local v1, "result":I
    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 152
    .local v2, "temp":J
    const/16 v4, 0x1f

    mul-int v5, v4, v1

    const/16 v6, 0x20

    ushr-long v7, v2, v6

    xor-long/2addr v7, v2

    long-to-int v7, v7

    add-int/2addr v5, v7

    .line 153
    .end local v1    # "result":I
    .local v5, "result":I
    iget-wide v7, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 154
    .end local v2    # "temp":J
    .local v1, "temp":J
    mul-int v3, v4, v5

    ushr-long v6, v1, v6

    xor-long/2addr v6, v1

    long-to-int v6, v6

    add-int/2addr v3, v6

    .line 155
    .end local v5    # "result":I
    .local v3, "result":I
    mul-int v5, v4, v3

    iget v6, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 156
    .end local v3    # "result":I
    .restart local v5    # "result":I
    mul-int/2addr v4, v5

    iget v3, p0, Landroid/location/Geofence;->mType:I

    add-int/2addr v4, v3

    .line 157
    .end local v5    # "result":I
    .local v4, "result":I
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 142
    const-string v0, "Geofence[%s %.6f, %.6f %.0fm]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/location/Geofence;->mType:I

    .line 143
    invoke-static {v2}, Landroid/location/Geofence;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 142
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Landroid/location/Geofence;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 126
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 128
    return-void
.end method
