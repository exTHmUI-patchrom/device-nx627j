.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final TRANSACTION_allowUsbDebugging:I = 0x16

.field static final TRANSACTION_clearDefaults:I = 0xe

.field static final TRANSACTION_clearUsbDebuggingKeys:I = 0x18

.field static final TRANSACTION_denyUsbDebugging:I = 0x17

.field static final TRANSACTION_getControlFd:I = 0x15

.field static final TRANSACTION_getCurrentAccessory:I = 0x3

.field static final TRANSACTION_getCurrentFunctions:I = 0x12

.field static final TRANSACTION_getDeviceList:I = 0x1

.field static final TRANSACTION_getPortStatus:I = 0x1a

.field static final TRANSACTION_getPorts:I = 0x19

.field static final TRANSACTION_getScreenUnlockedFunctions:I = 0x14

.field static final TRANSACTION_grantAccessoryPermission:I = 0xc

.field static final TRANSACTION_grantDevicePermission:I = 0xb

.field static final TRANSACTION_hasAccessoryPermission:I = 0x8

.field static final TRANSACTION_hasDefaults:I = 0xd

.field static final TRANSACTION_hasDevicePermission:I = 0x7

.field static final TRANSACTION_isFunctionEnabled:I = 0xf

.field static final TRANSACTION_openAccessory:I = 0x4

.field static final TRANSACTION_openDevice:I = 0x2

.field static final TRANSACTION_requestAccessoryPermission:I = 0xa

.field static final TRANSACTION_requestDevicePermission:I = 0x9

.field static final TRANSACTION_setAccessoryPackage:I = 0x6

.field static final TRANSACTION_setCurrentFunction:I = 0x11

.field static final TRANSACTION_setCurrentFunctions:I = 0x10

.field static final TRANSACTION_setDevicePackage:I = 0x5

.field static final TRANSACTION_setPortRoles:I = 0x1b

.field static final TRANSACTION_setScreenUnlockedFunctions:I = 0x13

.field static final TRANSACTION_setUsbDeviceConnectionHandler:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/IUsbManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "android.hardware.usb.IUsbManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_13

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 434
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 420
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/ComponentName;

    .local v3, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 426
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    :goto_0
    move-object v1, v3

    .line 428
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    return v2

    .line 407
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 413
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 414
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    return v2

    .line 391
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    .line 395
    .local v4, "_result":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v4, :cond_1

    .line 397
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {v4, p3, v2}, Landroid/hardware/usb/UsbPortStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 401
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    :goto_1
    return v2

    .line 383
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/hardware/usb/UsbPortStatus;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v1

    .line 385
    .local v1, "_result":[Landroid/hardware/usb/UsbPort;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 387
    return v2

    .line 376
    .end local v1    # "_result":[Landroid/hardware/usb/UsbPort;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->clearUsbDebuggingKeys()V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    return v2

    .line 369
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->denyUsbDebugging()V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    return v2

    .line 358
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 362
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/hardware/usb/IUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    return v2

    .line 342
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 345
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 346
    .local v5, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v5, :cond_3

    .line 348
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {v5, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 352
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    :goto_2
    return v2

    .line 334
    .end local v3    # "_arg0":J
    .end local v5    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getScreenUnlockedFunctions()J

    move-result-wide v3

    .line 336
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    return v2

    .line 325
    .end local v3    # "_result":J
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 328
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setScreenUnlockedFunctions(J)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    return v2

    .line 317
    .end local v3    # "_arg0":J
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions()J

    move-result-wide v3

    .line 319
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    return v2

    .line 306
    .end local v3    # "_result":J
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    .line 311
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {p0, v3, v1}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    return v2

    .line 297
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 300
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunctions(J)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    return v2

    .line 287
    .end local v3    # "_arg0":J
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 291
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v2

    .line 276
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    return v2

    .line 264
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result v4

    .line 270
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    return v2

    .line 248
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    sget-object v1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/usb/UsbAccessory;

    .local v3, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_3

    .line 254
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :cond_5
    nop

    .restart local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_3
    move-object v1, v3

    .line 257
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .local v1, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    return v2

    .line 232
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    sget-object v1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .local v3, "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_4

    .line 238
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :cond_6
    nop

    .restart local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_4
    move-object v1, v3

    .line 241
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .local v1, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    return v2

    .line 209
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    sget-object v1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    .local v1, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_5

    .line 215
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :cond_7
    move-object v1, v3

    .line 218
    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 221
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .local v3, "_arg2":Landroid/app/PendingIntent;
    goto :goto_6

    .line 224
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :cond_8
    nop

    .line 226
    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual {p0, v1, v4, v3}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    return v2

    .line 186
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 189
    sget-object v1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .local v1, "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_7

    .line 192
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :cond_9
    move-object v1, v3

    .line 195
    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 198
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_8

    .line 201
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    :cond_a
    nop

    .line 203
    .restart local v3    # "_arg2":Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual {p0, v1, v4, v3}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    return v2

    .line 171
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 174
    sget-object v1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/usb/UsbAccessory;

    .local v3, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_9

    .line 177
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :cond_b
    nop

    .restart local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_9
    move-object v1, v3

    .line 179
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .local v1, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    .line 180
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return v2

    .line 154
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Z
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 157
    sget-object v1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .local v3, "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_a

    .line 160
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :cond_c
    nop

    .restart local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_a
    move-object v1, v3

    .line 163
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .local v1, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v4

    .line 165
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return v2

    .line 136
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 139
    sget-object v1, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/usb/UsbAccessory;

    .local v3, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_b

    .line 142
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :cond_d
    nop

    .restart local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_b
    move-object v1, v3

    .line 145
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .local v1, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    return v2

    .line 118
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 121
    sget-object v1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .local v3, "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_c

    .line 124
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :cond_e
    nop

    .restart local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_c
    move-object v1, v3

    .line 127
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .local v1, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 130
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v2

    .line 97
    .end local v1    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 100
    sget-object v3, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbAccessory;

    .local v3, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_d

    .line 103
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :cond_f
    nop

    .line 105
    .restart local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_d
    invoke-virtual {p0, v3}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 106
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_10

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v4, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 112
    :cond_10
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    :goto_e
    return v2

    .line 83
    .end local v3    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v3

    .line 85
    .local v3, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v3, :cond_11

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v3, p3, v2}, Landroid/hardware/usb/UsbAccessory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 91
    :cond_11
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    :goto_f
    return v2

    .line 65
    .end local v3    # "_result":Landroid/hardware/usb/UsbAccessory;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 71
    .restart local v5    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v5, :cond_12

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v5, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 77
    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    :goto_10
    return v2

    .line 49
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    nop

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    return v2

    .line 44
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
