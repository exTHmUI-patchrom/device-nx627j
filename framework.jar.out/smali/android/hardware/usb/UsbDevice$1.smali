.class Landroid/hardware/usb/UsbDevice$1;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;
    .locals 23
    .param p1, "in"    # Landroid/os/Parcel;

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 295
    .local v11, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 296
    .local v12, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 297
    .local v13, "productId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 298
    .local v14, "clasz":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 299
    .local v15, "subClass":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 300
    .local v16, "protocol":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 301
    .local v17, "manufacturerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 302
    .local v18, "productName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 303
    .local v19, "version":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 304
    .local v20, "serialNumber":Ljava/lang/String;
    const-class v0, Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 305
    .local v9, "configurations":[Landroid/os/Parcelable;
    new-instance v21, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, v21

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v22, v11

    move-object v11, v9

    move-object/from16 v9, v19

    .end local v9    # "configurations":[Landroid/os/Parcelable;
    .local v11, "configurations":[Landroid/os/Parcelable;
    .local v22, "name":Ljava/lang/String;
    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0, v11}, Landroid/hardware/usb/UsbDevice;->setConfigurations([Landroid/os/Parcelable;)V

    .line 308
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbDevice;
    .locals 1
    .param p1, "size"    # I

    .line 312
    new-array v0, p1, [Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->newArray(I)[Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    return-object p1
.end method
