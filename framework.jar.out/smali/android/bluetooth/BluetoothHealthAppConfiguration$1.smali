.class Landroid/bluetooth/BluetoothHealthAppConfiguration$1;
.super Ljava/lang/Object;
.source "BluetoothHealthAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealthAppConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "role":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .local v3, "channelType":I
    new-instance v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHealthAppConfiguration;-><init>(Ljava/lang/String;III)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 151
    new-array v0, p1, [Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;->newArray(I)[Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object p1

    return-object p1
.end method
