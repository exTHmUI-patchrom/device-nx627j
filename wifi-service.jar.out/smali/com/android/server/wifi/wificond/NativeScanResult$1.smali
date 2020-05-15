.class Lcom/android/server/wifi/wificond/NativeScanResult$1;
.super Ljava/lang/Object;
.source "NativeScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/NativeScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/wifi/wificond/NativeScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/NativeScanResult;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    new-instance v0, Lcom/android/server/wifi/wificond/NativeScanResult;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/NativeScanResult;-><init>()V

    .line 90
    .local v0, "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, "capabilityInt":I
    new-instance v2, Ljava/util/BitSet;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    .line 98
    const/4 v2, 0x0

    move v4, v2

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    .line 99
    shl-int/2addr v5, v4

    and-int/2addr v5, v1

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 98
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    nop

    :cond_2
    iput-boolean v2, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->associated:Z

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    .line 105
    iget-object v2, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/wifi/wificond/RadioChainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 106
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/NativeScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/NativeScanResult;
    .locals 1
    .param p1, "size"    # I

    .line 111
    new-array v0, p1, [Lcom/android/server/wifi/wificond/NativeScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/NativeScanResult$1;->newArray(I)[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object p1

    return-object p1
.end method
