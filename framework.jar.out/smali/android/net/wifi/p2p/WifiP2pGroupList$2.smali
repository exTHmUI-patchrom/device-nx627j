.class Landroid/net/wifi/p2p/WifiP2pGroupList$2;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pGroupList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 233
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>()V

    .line 235
    .local v0, "grpList":Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .local v1, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 237
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p1, "size"    # I

    .line 243
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object p1

    return-object p1
.end method
