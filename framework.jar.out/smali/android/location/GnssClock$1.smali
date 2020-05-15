.class Landroid/location/GnssClock$1;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssClock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 437
    new-instance v0, Landroid/location/GnssClock;

    invoke-direct {v0}, Landroid/location/GnssClock;-><init>()V

    .line 439
    .local v0, "gpsClock":Landroid/location/GnssClock;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$002(Landroid/location/GnssClock;I)I

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$102(Landroid/location/GnssClock;I)I

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$202(Landroid/location/GnssClock;J)J

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$302(Landroid/location/GnssClock;D)D

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$402(Landroid/location/GnssClock;J)J

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$502(Landroid/location/GnssClock;D)D

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$602(Landroid/location/GnssClock;D)D

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$702(Landroid/location/GnssClock;D)D

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$802(Landroid/location/GnssClock;D)D

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$902(Landroid/location/GnssClock;I)I

    .line 450
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssClock;
    .locals 1
    .param p1, "size"    # I

    .line 455
    new-array v0, p1, [Landroid/location/GnssClock;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->newArray(I)[Landroid/location/GnssClock;

    move-result-object p1

    return-object p1
.end method
