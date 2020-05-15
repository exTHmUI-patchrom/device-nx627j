.class Landroid/hardware/usb/UsbInterface$1;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbInterface;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 169
    .local v7, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 170
    .local v8, "alternateSetting":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 172
    .local v10, "Class":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 173
    .local v11, "subClass":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 174
    .local v12, "protocol":I
    const-class v0, Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object/from16 v13, p1

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v14

    .line 175
    .local v14, "endpoints":[Landroid/os/Parcelable;
    new-instance v15, Landroid/hardware/usb/UsbInterface;

    move-object v0, v15

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    .line 176
    .local v0, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v0, v14}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    .line 177
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbInterface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbInterface;
    .locals 1
    .param p1, "size"    # I

    .line 181
    new-array v0, p1, [Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbInterface$1;->newArray(I)[Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    return-object p1
.end method
