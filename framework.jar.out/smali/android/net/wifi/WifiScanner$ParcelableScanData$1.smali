.class Landroid/net/wifi/WifiScanner$ParcelableScanData$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ParcelableScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ParcelableScanData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 486
    .local v0, "n":I
    new-array v1, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    .line 487
    .local v1, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 488
    sget-object v3, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanData;

    aput-object v3, v1, v2

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .locals 1
    .param p1, "size"    # I

    .line 494
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ParcelableScanData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanData;

    move-result-object p1

    return-object p1
.end method
