.class Landroid/location/GeocoderParams$1;
.super Ljava/lang/Object;
.source "GeocoderParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GeocoderParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GeocoderParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    new-instance v0, Landroid/location/GeocoderParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/location/GeocoderParams;-><init>(Landroid/location/GeocoderParams$1;)V

    .line 71
    .local v0, "gp":Landroid/location/GeocoderParams;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "variant":Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Landroid/location/GeocoderParams;->access$102(Landroid/location/GeocoderParams;Ljava/util/Locale;)Ljava/util/Locale;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/location/GeocoderParams;->access$202(Landroid/location/GeocoderParams;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GeocoderParams;
    .locals 1
    .param p1, "size"    # I

    .line 80
    new-array v0, p1, [Landroid/location/GeocoderParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->newArray(I)[Landroid/location/GeocoderParams;

    move-result-object p1

    return-object p1
.end method
