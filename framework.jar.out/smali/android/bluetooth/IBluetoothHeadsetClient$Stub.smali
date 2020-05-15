.class public abstract Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetClient"

.field static final TRANSACTION_acceptCall:I = 0xc

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x16

.field static final TRANSACTION_dial:I = 0x12

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x17

.field static final TRANSACTION_enterPrivateMode:I = 0x10

.field static final TRANSACTION_explicitCallTransfer:I = 0x11

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x19

.field static final TRANSACTION_getAudioState:I = 0x15

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getCurrentAgEvents:I = 0xb

.field static final TRANSACTION_getCurrentAgFeatures:I = 0x1a

.field static final TRANSACTION_getCurrentCalls:I = 0xa

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getLastVoiceTagNumber:I = 0x14

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_holdCall:I = 0xd

.field static final TRANSACTION_rejectCall:I = 0xe

.field static final TRANSACTION_sendDTMF:I = 0x13

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x18

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9

.field static final TRANSACTION_terminateCall:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
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

    .line 43
    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 467
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 446
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 452
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    nop

    .line 454
    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v4

    .line 455
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v4, :cond_1

    .line 457
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    invoke-virtual {v4, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    :goto_1
    return v2

    .line 431
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 437
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    move-object v1, v3

    .line 439
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 440
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    return v2

    .line 415
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 418
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 421
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    nop

    .line 424
    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    .line 425
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {p0, v3, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    return v2

    .line 400
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 403
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 406
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    move-object v1, v3

    .line 408
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 409
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    return v2

    .line 385
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 388
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 391
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_6
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    move-object v1, v3

    .line 393
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 394
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    return v2

    .line 370
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 373
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 376
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_6
    move-object v1, v3

    .line 378
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 379
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    return v2

    .line 355
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 358
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 361
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_8
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    move-object v1, v3

    .line 363
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 364
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    return v2

    .line 338
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 341
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 344
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_9
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_8
    move-object v1, v3

    .line 347
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 348
    .local v3, "_arg1":B
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v4

    .line 349
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    return v2

    .line 315
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 318
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 321
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_a
    nop

    .line 324
    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v5

    .line 326
    .local v5, "_result":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v5, :cond_b

    .line 328
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v5, p3, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 332
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    :goto_a
    return v2

    .line 300
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 303
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 306
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_c
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_b
    move-object v1, v3

    .line 308
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 309
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return v2

    .line 283
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 286
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 289
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_d
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_c
    move-object v1, v3

    .line 292
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 293
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    .line 294
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return v2

    .line 261
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 264
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 267
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_e
    move-object v1, v3

    .line 270
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 271
    sget-object v3, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .local v3, "_arg1":Landroid/bluetooth/BluetoothHeadsetClientCall;
    goto :goto_e

    .line 274
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_f
    nop

    .line 276
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :goto_e
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    move-result v4

    .line 277
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    return v2

    .line 246
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 249
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 252
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_10
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_f
    move-object v1, v3

    .line 254
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 255
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    return v2

    .line 231
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 234
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 237
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_11
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_10
    move-object v1, v3

    .line 239
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 240
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return v2

    .line 214
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 217
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .line 220
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_12
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_11
    move-object v1, v3

    .line 223
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    .line 225
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    return v2

    .line 193
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 196
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 199
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_13
    nop

    .line 201
    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_12
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v4

    .line 202
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_14

    .line 204
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v4, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 208
    :cond_14
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    :goto_13
    return v2

    .line 178
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 181
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 184
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_15
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_14
    move-object v1, v3

    .line 186
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 189
    return v2

    .line 163
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 166
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .line 169
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_16
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_15
    move-object v1, v3

    .line 171
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 172
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return v2

    .line 148
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 151
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 154
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_17
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_16
    move-object v1, v3

    .line 156
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 157
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return v2

    .line 133
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 136
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 139
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_18
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_17
    move-object v1, v3

    .line 141
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 142
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return v2

    .line 116
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 119
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .line 122
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_19
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_18
    move-object v1, v3

    .line 125
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    .line 127
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return v2

    .line 101
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 104
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .line 107
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1a
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_19
    move-object v1, v3

    .line 109
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 110
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v2

    .line 91
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 94
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    return v2

    .line 83
    .end local v1    # "_arg0":[I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    return v2

    .line 68
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 71
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    .line 74
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1b
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1a
    move-object v1, v3

    .line 76
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 77
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 56
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .line 59
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1c
    nop

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1b
    move-object v1, v3

    .line 61
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 62
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Z
    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
