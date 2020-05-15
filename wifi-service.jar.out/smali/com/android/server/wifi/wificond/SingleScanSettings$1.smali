.class Lcom/android/server/wifi/wificond/SingleScanSettings$1;
.super Ljava/lang/Object;
.source "SingleScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/wificond/SingleScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/wifi/wificond/SingleScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/SingleScanSettings;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 99
    new-instance v0, Lcom/android/server/wifi/wificond/SingleScanSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/SingleScanSettings;-><init>()V

    .line 100
    .local v0, "result":Lcom/android/server/wifi/wificond/SingleScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    .line 101
    iget v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    invoke-static {v1}, Lcom/android/server/wifi/wificond/SingleScanSettings;->access$000(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "SingleScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid scan type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 105
    iget-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/wifi/wificond/ChannelSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 107
    iget-object v1, v0, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/wifi/wificond/HiddenNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "SingleScanSettings"

    const-string v2, "Found trailing data after parcel parsing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/SingleScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/wifi/wificond/SingleScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/wifi/wificond/SingleScanSettings;
    .locals 1
    .param p1, "size"    # I

    .line 116
    new-array v0, p1, [Lcom/android/server/wifi/wificond/SingleScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/wificond/SingleScanSettings$1;->newArray(I)[Lcom/android/server/wifi/wificond/SingleScanSettings;

    move-result-object p1

    return-object p1
.end method
