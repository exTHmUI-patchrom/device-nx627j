.class Landroid/net/wifi/WifiScanner$ScanSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 293
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 294
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .local v1, "num_channels":I
    new-array v4, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 305
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 307
    .local v5, "frequency":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v6, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 308
    .local v6, "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v3, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    iput-boolean v7, v6, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 310
    iget-object v7, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v6, v7, v4

    .line 305
    .end local v5    # "frequency":I
    .end local v6    # "spec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 312
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .local v3, "numNetworks":I
    new-array v4, v3, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 314
    nop

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_3

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "ssid":Ljava/lang/String;
    iget-object v5, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    new-instance v6, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {v6, v4}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v2

    .line 314
    .end local v4    # "ssid":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 318
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 1
    .param p1, "size"    # I

    .line 322
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p1

    return-object p1
.end method
