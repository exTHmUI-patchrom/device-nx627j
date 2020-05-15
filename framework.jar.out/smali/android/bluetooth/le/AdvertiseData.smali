.class public final Landroid/bluetooth/le/AdvertiseData;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertiseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIncludeDeviceName:Z

.field private final mIncludeTxPowerLevel:Z

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportDiscoveryData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ[B)V
    .locals 0
    .param p4, "includeTxPowerLevel"    # Z
    .param p5, "includeDeviceName"    # Z
    .param p6, "transportDiscoveryData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;ZZ[B)V"
        }
    .end annotation

    .line 57
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    .line 59
    iput-object p2, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 60
    iput-object p3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    .line 61
    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    .line 62
    iput-boolean p5, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    .line 63
    iput-object p6, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ[BLandroid/bluetooth/le/AdvertiseData$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Landroid/util/SparseArray;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # [B
    .param p7, "x6"    # Landroid/bluetooth/le/AdvertiseData$1;

    .line 41
    invoke-direct/range {p0 .. p6}, Landroid/bluetooth/le/AdvertiseData;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ[B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 126
    return v0

    .line 128
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/AdvertiseData;

    .line 132
    .local v2, "other":Landroid/bluetooth/le/AdvertiseData;
    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 133
    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    .line 135
    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    iget-boolean v4, v2, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    iget-boolean v4, v2, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    iget-object v4, v2, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    .line 138
    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 129
    .end local v2    # "other":Landroid/bluetooth/le/AdvertiseData;
    :cond_3
    :goto_1
    return v1
.end method

.method public getIncludeDeviceName()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    return v0
.end method

.method public getIncludeTxPowerLevel()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    return v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTransportDiscoveryData()[B
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 116
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertiseData [mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 144
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    .line 145
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIncludeTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIncludeDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTransportDiscoveryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    .line 148
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 161
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 168
    .local v2, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 170
    .end local v2    # "uuid":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    array-length v0, v0

    nop

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mTransportDiscoveryData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 177
    :cond_3
    return-void
.end method
