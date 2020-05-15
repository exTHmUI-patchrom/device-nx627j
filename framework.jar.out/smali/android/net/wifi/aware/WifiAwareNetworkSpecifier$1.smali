.class Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 146
    new-instance v10, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;I)V

    .line 146
    return-object v10
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 1
    .param p1, "size"    # I

    .line 160
    new-array v0, p1, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
