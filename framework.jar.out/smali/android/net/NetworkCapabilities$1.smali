.class Landroid/net/NetworkCapabilities$1;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1388
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1390
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->access$002(Landroid/net/NetworkCapabilities;J)J

    .line 1391
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->access$102(Landroid/net/NetworkCapabilities;J)J

    .line 1392
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkCapabilities;->access$202(Landroid/net/NetworkCapabilities;J)J

    .line 1393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$302(Landroid/net/NetworkCapabilities;I)I

    .line 1394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$402(Landroid/net/NetworkCapabilities;I)I

    .line 1395
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkSpecifier;

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->access$502(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkSpecifier;

    .line 1396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/NetworkCapabilities;->access$602(Landroid/net/NetworkCapabilities;I)I

    .line 1397
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$702(Landroid/net/NetworkCapabilities;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    .line 1399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->access$802(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1385
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "size"    # I

    .line 1404
    new-array v0, p1, [Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1385
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->newArray(I)[Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method
