.class Landroid/bluetooth/BluetoothCodecStatus$1;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothCodecStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecStatus;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    .line 113
    .local v0, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    sget-object v1, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/bluetooth/BluetoothCodecConfig;

    .line 115
    .local v1, "codecsLocalCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    sget-object v2, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/bluetooth/BluetoothCodecConfig;

    .line 118
    .local v2, "codecsSelectableCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    new-instance v3, Landroid/bluetooth/BluetoothCodecStatus;

    invoke-direct {v3, v0, v1, v2}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothCodecStatus;
    .locals 1
    .param p1, "size"    # I

    .line 124
    new-array v0, p1, [Landroid/bluetooth/BluetoothCodecStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus$1;->newArray(I)[Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    return-object p1
.end method
