.class Landroid/net/wifi/WifiScanner$PnoSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$PnoSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 663
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 664
    .local v0, "settings":Landroid/net/wifi/WifiScanner$PnoSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    .local v1, "numNetworks":I
    new-array v3, v1, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 674
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "ssid":Ljava/lang/String;
    new-instance v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-direct {v4, v3}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 677
    .local v4, "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 679
    iget-object v5, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aput-object v4, v5, v2

    .line 674
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 681
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 1
    .param p1, "size"    # I

    .line 685
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$PnoSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object p1

    return-object p1
.end method
