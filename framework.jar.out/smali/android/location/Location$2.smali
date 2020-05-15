.class Landroid/location/Location$2;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "provider":Ljava/lang/String;
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v1, "l":Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$802(Landroid/location/Location;J)J

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$902(Landroid/location/Location;J)J

    .line 1086
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$1002(Landroid/location/Location;B)B

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$1102(Landroid/location/Location;D)D

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$1202(Landroid/location/Location;D)D

    .line 1089
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$1302(Landroid/location/Location;D)D

    .line 1090
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$1402(Landroid/location/Location;F)F

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$1502(Landroid/location/Location;F)F

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$1602(Landroid/location/Location;F)F

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$1702(Landroid/location/Location;F)F

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$1802(Landroid/location/Location;F)F

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$1902(Landroid/location/Location;F)F

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/location/Location;->access$2002(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1097
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1079
    invoke-virtual {p0, p1}, Landroid/location/Location$2;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/Location;
    .locals 1
    .param p1, "size"    # I

    .line 1102
    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1079
    invoke-virtual {p0, p1}, Landroid/location/Location$2;->newArray(I)[Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method
