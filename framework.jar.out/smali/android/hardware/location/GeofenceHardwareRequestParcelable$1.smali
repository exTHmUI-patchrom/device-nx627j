.class Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .local v0, "geofenceType":I
    if-eqz v0, :cond_0

    .line 143
    const-string v1, "GeofenceHardwareRequest"

    const-string v2, "Invalid Geofence type: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    return-object v1

    .line 149
    :cond_0
    nop

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 149
    invoke-static/range {v2 .. v7}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    move-result-object v1

    .line 153
    .local v1, "request":Landroid/hardware/location/GeofenceHardwareRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setLastTransition(I)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setMonitorTransitions(I)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setUnknownTimer(I)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setNotificationResponsiveness(I)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/location/GeofenceHardwareRequest;->setSourceTechnologies(I)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "id":I
    new-instance v3, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-direct {v3, v2, v1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .locals 1
    .param p1, "size"    # I

    .line 165
    new-array v0, p1, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    move-result-object p1

    return-object p1
.end method
