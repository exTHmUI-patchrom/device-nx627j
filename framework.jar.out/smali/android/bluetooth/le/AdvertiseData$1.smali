.class Landroid/bluetooth/le/AdvertiseData$1;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/AdvertiseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 189
    .local v0, "builder":Landroid/bluetooth/le/AdvertiseData$Builder;
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 190
    .local v1, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 191
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 192
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "manufacturerSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 197
    .local v5, "manufacturerId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 198
    .local v6, "manufacturerData":[B
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 195
    .end local v5    # "manufacturerId":I
    .end local v6    # "manufacturerData":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 200
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .local v4, "serviceDataSize":I
    move v5, v3

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 202
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 203
    .local v6, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 204
    .local v7, "serviceData":[B
    invoke-virtual {v0, v6, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 201
    .end local v6    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v7    # "serviceData":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 206
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v0, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_4

    move v3, v6

    nop

    :cond_4
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .local v3, "transportDiscoveryDataSize":I
    if-lez v3, :cond_5

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 211
    .local v5, "transportDiscoveryData":[B
    invoke-virtual {v0, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addTransportDiscoveryData([B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 213
    .end local v5    # "transportDiscoveryData":[B
    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/le/AdvertiseData;
    .locals 1
    .param p1, "size"    # I

    .line 183
    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    return-object p1
.end method
