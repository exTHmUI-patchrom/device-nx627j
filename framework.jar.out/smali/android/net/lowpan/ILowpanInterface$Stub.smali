.class public abstract Landroid/net/lowpan/ILowpanInterface$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterface.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterface"

.field static final TRANSACTION_addExternalRoute:I = 0x27

.field static final TRANSACTION_addListener:I = 0x1f

.field static final TRANSACTION_addOnMeshPrefix:I = 0x25

.field static final TRANSACTION_attach:I = 0x16

.field static final TRANSACTION_beginLowPower:I = 0x1c

.field static final TRANSACTION_closeCommissioningSession:I = 0x1a

.field static final TRANSACTION_form:I = 0x15

.field static final TRANSACTION_getDriverVersion:I = 0x3

.field static final TRANSACTION_getExtendedAddress:I = 0xf

.field static final TRANSACTION_getLinkAddresses:I = 0x12

.field static final TRANSACTION_getLinkNetworks:I = 0x13

.field static final TRANSACTION_getLowpanCredential:I = 0x11

.field static final TRANSACTION_getLowpanIdentity:I = 0x10

.field static final TRANSACTION_getMacAddress:I = 0x6

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getNcpVersion:I = 0x2

.field static final TRANSACTION_getPartitionId:I = 0xe

.field static final TRANSACTION_getRole:I = 0xd

.field static final TRANSACTION_getState:I = 0xc

.field static final TRANSACTION_getSupportedChannels:I = 0x4

.field static final TRANSACTION_getSupportedNetworkTypes:I = 0x5

.field static final TRANSACTION_isCommissioned:I = 0xa

.field static final TRANSACTION_isConnected:I = 0xb

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_isUp:I = 0x9

.field static final TRANSACTION_join:I = 0x14

.field static final TRANSACTION_leave:I = 0x17

.field static final TRANSACTION_onHostWake:I = 0x1e

.field static final TRANSACTION_pollForData:I = 0x1d

.field static final TRANSACTION_removeExternalRoute:I = 0x28

.field static final TRANSACTION_removeListener:I = 0x20

.field static final TRANSACTION_removeOnMeshPrefix:I = 0x26

.field static final TRANSACTION_reset:I = 0x18

.field static final TRANSACTION_sendToCommissioner:I = 0x1b

.field static final TRANSACTION_setEnabled:I = 0x8

.field static final TRANSACTION_startCommissioningSession:I = 0x19

.field static final TRANSACTION_startEnergyScan:I = 0x23

.field static final TRANSACTION_startNetScan:I = 0x21

.field static final TRANSACTION_stopEnergyScan:I = 0x24

.field static final TRANSACTION_stopNetScan:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.lowpan.ILowpanInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.net.lowpan.ILowpanInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterface;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/net/lowpan/ILowpanInterface;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "android.net.lowpan.ILowpanInterface"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_b

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 416
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    sget-object v1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/IpPrefix;

    .local v3, "_arg0":Landroid/net/IpPrefix;
    goto :goto_0

    .line 422
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    :goto_0
    move-object v1, v3

    .line 424
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    .local v1, "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeExternalRoute(Landroid/net/IpPrefix;)V

    .line 425
    return v2

    .line 400
    .end local v1    # "_arg0":Landroid/net/IpPrefix;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    sget-object v1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/IpPrefix;

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    goto :goto_1

    .line 406
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    :cond_1
    nop

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    :goto_1
    move-object v1, v3

    .line 409
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    .restart local v1    # "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->addExternalRoute(Landroid/net/IpPrefix;I)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    return v2

    .line 387
    .end local v1    # "_arg0":Landroid/net/IpPrefix;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    sget-object v1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/IpPrefix;

    .local v3, "_arg0":Landroid/net/IpPrefix;
    goto :goto_2

    .line 393
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    :cond_2
    nop

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    :goto_2
    move-object v1, v3

    .line 395
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    .restart local v1    # "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V

    .line 396
    return v2

    .line 371
    .end local v1    # "_arg0":Landroid/net/IpPrefix;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    sget-object v1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/IpPrefix;

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    goto :goto_3

    .line 377
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    :cond_3
    nop

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    :goto_3
    move-object v1, v3

    .line 380
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    .restart local v1    # "_arg0":Landroid/net/IpPrefix;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    return v2

    .line 365
    .end local v1    # "_arg0":Landroid/net/IpPrefix;
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopEnergyScan()V

    .line 367
    return v2

    .line 353
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 356
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 358
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanEnergyScanCallback;

    move-result-object v4

    .line 359
    .local v4, "_arg1":Landroid/net/lowpan/ILowpanEnergyScanCallback;
    invoke-virtual {p0, v3, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    return v2

    .line 347
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_arg1":Landroid/net/lowpan/ILowpanEnergyScanCallback;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopNetScan()V

    .line 349
    return v2

    .line 335
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 338
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 340
    .restart local v3    # "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanNetScanCallback;

    move-result-object v4

    .line 341
    .local v4, "_arg1":Landroid/net/lowpan/ILowpanNetScanCallback;
    invoke-virtual {p0, v3, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    return v2

    .line 327
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_arg1":Landroid/net/lowpan/ILowpanNetScanCallback;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v1

    .line 330
    .local v1, "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 331
    return v2

    .line 318
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v1

    .line 321
    .restart local v1    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    return v2

    .line 312
    .end local v1    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->onHostWake()V

    .line 314
    return v2

    .line 306
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->pollForData()V

    .line 308
    return v2

    .line 299
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->beginLowPower()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    return v2

    .line 291
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 294
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->sendToCommissioner([B)V

    .line 295
    return v2

    .line 284
    .end local v1    # "_arg0":[B
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->closeCommissioningSession()V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    return v2

    .line 270
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    sget-object v1, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/lowpan/LowpanBeaconInfo;

    .local v3, "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    goto :goto_4

    .line 276
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :cond_4
    nop

    .restart local v3    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :goto_4
    move-object v1, v3

    .line 278
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    .local v1, "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    return v2

    .line 263
    .end local v1    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->reset()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    return v2

    .line 256
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->leave()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v2

    .line 242
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    sget-object v1, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/lowpan/LowpanProvision;

    .local v3, "_arg0":Landroid/net/lowpan/LowpanProvision;
    goto :goto_5

    .line 248
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :cond_5
    nop

    .restart local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :goto_5
    move-object v1, v3

    .line 250
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    .local v1, "_arg0":Landroid/net/lowpan/LowpanProvision;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->attach(Landroid/net/lowpan/LowpanProvision;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    return v2

    .line 228
    .end local v1    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    sget-object v1, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/lowpan/LowpanProvision;

    .restart local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    goto :goto_6

    .line 234
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :cond_6
    nop

    .restart local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :goto_6
    move-object v1, v3

    .line 236
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    .restart local v1    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->form(Landroid/net/lowpan/LowpanProvision;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    return v2

    .line 214
    .end local v1    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 217
    sget-object v1, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/lowpan/LowpanProvision;

    .restart local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    goto :goto_7

    .line 220
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :cond_7
    nop

    .restart local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :goto_7
    move-object v1, v3

    .line 222
    .end local v3    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    .restart local v1    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->join(Landroid/net/lowpan/LowpanProvision;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v2

    .line 206
    .end local v1    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkNetworks()[Landroid/net/IpPrefix;

    move-result-object v1

    .line 208
    .local v1, "_result":[Landroid/net/IpPrefix;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 210
    return v2

    .line 198
    .end local v1    # "_result":[Landroid/net/IpPrefix;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 202
    return v2

    .line 184
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    move-result-object v3

    .line 186
    .local v3, "_result":Landroid/net/lowpan/LowpanCredential;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v3, :cond_8

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v3, p3, v2}, Landroid/net/lowpan/LowpanCredential;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 192
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    :goto_8
    return v2

    .line 170
    .end local v3    # "_result":Landroid/net/lowpan/LowpanCredential;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v3

    .line 172
    .local v3, "_result":Landroid/net/lowpan/LowpanIdentity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v3, :cond_9

    .line 174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v3, p3, v2}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 178
    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    :goto_9
    return v2

    .line 162
    .end local v3    # "_result":Landroid/net/lowpan/LowpanIdentity;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getExtendedAddress()[B

    move-result-object v1

    .line 164
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 166
    return v2

    .line 154
    .end local v1    # "_result":[B
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getPartitionId()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v2

    .line 146
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getRole()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v2

    .line 138
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getState()Ljava/lang/String;

    move-result-object v1

    .line 140
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v2

    .line 130
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isConnected()Z

    move-result v1

    .line 132
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v2

    .line 122
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isCommissioned()Z

    move-result v1

    .line 124
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v2

    .line 114
    .end local v1    # "_result":Z
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isUp()Z

    move-result v1

    .line 116
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v2

    .line 105
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    nop

    .line 108
    .local v1, "_arg0":Z
    :cond_a
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterface$Stub;->setEnabled(Z)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v2

    .line 97
    .end local v1    # "_arg0":Z
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isEnabled()Z

    move-result v1

    .line 99
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return v2

    .line 89
    .end local v1    # "_result":Z
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getMacAddress()[B

    move-result-object v1

    .line 91
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    return v2

    .line 81
    .end local v1    # "_result":[B
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedNetworkTypes()[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 85
    return v2

    .line 73
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v1

    .line 75
    .local v1, "_result":[Landroid/net/lowpan/LowpanChannelInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 77
    return v2

    .line 65
    .end local v1    # "_result":[Landroid/net/lowpan/LowpanChannelInfo;
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getDriverVersion()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v2

    .line 57
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getNcpVersion()Ljava/lang/String;

    move-result-object v1

    .line 59
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v2

    .line 49
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_result":Ljava/lang/String;
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
