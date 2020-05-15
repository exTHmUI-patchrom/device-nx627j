.class Landroid/net/wifi/p2p/WifiWscVendorInfo$1;
.super Ljava/lang/Object;
.source "WifiWscVendorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiWscVendorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiWscVendorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiWscVendorInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 234
    new-instance v0, Landroid/net/wifi/p2p/WifiWscVendorInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiWscVendorInfo;-><init>()V

    .line 235
    .local v0, "device":Landroid/net/wifi/p2p/WifiWscVendorInfo;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiWscVendorInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 236
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiWscVendorInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiWscVendorInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiWscVendorInfo;
    .locals 1
    .param p1, "size"    # I

    .line 240
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiWscVendorInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiWscVendorInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiWscVendorInfo;

    move-result-object p1

    return-object p1
.end method
