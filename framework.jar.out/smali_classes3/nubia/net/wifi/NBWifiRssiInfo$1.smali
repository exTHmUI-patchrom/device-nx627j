.class Lnubia/net/wifi/NBWifiRssiInfo$1;
.super Ljava/lang/Object;
.source "NBWifiRssiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/net/wifi/NBWifiRssiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnubia/net/wifi/NBWifiRssiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lnubia/net/wifi/NBWifiRssiInfo$1;->createFromParcel(Landroid/os/Parcel;)Lnubia/net/wifi/NBWifiRssiInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnubia/net/wifi/NBWifiRssiInfo;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "newRssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, "lastRssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "freq":I
    new-instance v3, Lnubia/net/wifi/NBWifiRssiInfo;

    invoke-direct {v3, v0, v1, v2}, Lnubia/net/wifi/NBWifiRssiInfo;-><init>(III)V

    return-object v3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lnubia/net/wifi/NBWifiRssiInfo$1;->newArray(I)[Lnubia/net/wifi/NBWifiRssiInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnubia/net/wifi/NBWifiRssiInfo;
    .locals 1
    .param p1, "size"    # I

    .line 137
    new-array v0, p1, [Lnubia/net/wifi/NBWifiRssiInfo;

    return-object v0
.end method
