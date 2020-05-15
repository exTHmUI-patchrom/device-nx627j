.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addService:I = 0x30

.field static final TRANSACTION_beginReliableWrite:I = 0x24

.field static final TRANSACTION_clearServices:I = 0x32

.field static final TRANSACTION_clientConnect:I = 0x17

.field static final TRANSACTION_clientDisconnect:I = 0x18

.field static final TRANSACTION_clientReadPhy:I = 0x1a

.field static final TRANSACTION_clientSetPreferredPhy:I = 0x19

.field static final TRANSACTION_configureMTU:I = 0x27

.field static final TRANSACTION_connectionParameterUpdate:I = 0x28

.field static final TRANSACTION_disconnectAll:I = 0x35

.field static final TRANSACTION_discoverServiceByUuid:I = 0x1d

.field static final TRANSACTION_discoverServices:I = 0x1c

.field static final TRANSACTION_enableAdvertisingSet:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x25

.field static final TRANSACTION_flushPendingBatchResults:I = 0x8

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_getOwnAddress:I = 0xb

.field static final TRANSACTION_leConnectionUpdate:I = 0x29

.field static final TRANSACTION_numHwTrackFiltersAvailable:I = 0x37

.field static final TRANSACTION_readCharacteristic:I = 0x1e

.field static final TRANSACTION_readDescriptor:I = 0x21

.field static final TRANSACTION_readRemoteRssi:I = 0x26

.field static final TRANSACTION_readUsingCharacteristicUuid:I = 0x1f

.field static final TRANSACTION_refreshDevice:I = 0x1b

.field static final TRANSACTION_registerClient:I = 0x15

.field static final TRANSACTION_registerForNotification:I = 0x23

.field static final TRANSACTION_registerScanner:I = 0x2

.field static final TRANSACTION_registerServer:I = 0x2a

.field static final TRANSACTION_registerSync:I = 0x13

.field static final TRANSACTION_removeService:I = 0x31

.field static final TRANSACTION_sendNotification:I = 0x34

.field static final TRANSACTION_sendResponse:I = 0x33

.field static final TRANSACTION_serverConnect:I = 0x2c

.field static final TRANSACTION_serverDisconnect:I = 0x2d

.field static final TRANSACTION_serverReadPhy:I = 0x2f

.field static final TRANSACTION_serverSetPreferredPhy:I = 0x2e

.field static final TRANSACTION_setAdvertisingData:I = 0xd

.field static final TRANSACTION_setAdvertisingParameters:I = 0xf

.field static final TRANSACTION_setPeriodicAdvertisingData:I = 0x11

.field static final TRANSACTION_setPeriodicAdvertisingEnable:I = 0x12

.field static final TRANSACTION_setPeriodicAdvertisingParameters:I = 0x10

.field static final TRANSACTION_setScanResponseData:I = 0xe

.field static final TRANSACTION_startAdvertisingSet:I = 0x9

.field static final TRANSACTION_startScan:I = 0x4

.field static final TRANSACTION_startScanForIntent:I = 0x5

.field static final TRANSACTION_stopAdvertisingSet:I = 0xa

.field static final TRANSACTION_stopScan:I = 0x7

.field static final TRANSACTION_stopScanForIntent:I = 0x6

.field static final TRANSACTION_unregAll:I = 0x36

.field static final TRANSACTION_unregisterClient:I = 0x16

.field static final TRANSACTION_unregisterScanner:I = 0x3

.field static final TRANSACTION_unregisterServer:I = 0x2b

.field static final TRANSACTION_unregisterSync:I = 0x14

.field static final TRANSACTION_writeCharacteristic:I = 0x20

.field static final TRANSACTION_writeDescriptor:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGatt;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 42
    const-string v13, "android.bluetooth.IBluetoothGatt"

    .line 43
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_1d

    const/4 v0, 0x0

    const/4 v5, 0x0

    packed-switch v10, :pswitch_data_0

    .line 855
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 847
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->numHwTrackFiltersAvailable()I

    move-result v0

    .line 849
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    return v14

    .line 840
    .end local v0    # "_result":I
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregAll()V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    return v14

    .line 833
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll()V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    return v14

    .line 816
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 820
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 822
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 824
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v4, v14

    goto :goto_0

    :cond_0
    move v4, v0

    .line 826
    .local v4, "_arg3":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 827
    .local v15, "_arg4":[B
    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IZ[B)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    return v14

    .line 797
    .end local v4    # "_arg3":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg4":[B
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 801
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 803
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 805
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 807
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 809
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 810
    .local v18, "_arg5":[B
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    return v14

    .line 788
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":[B
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 791
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    return v14

    .line 777
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 781
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 782
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(II)V

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    return v14

    .line 761
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 765
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    sget-object v1, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    .local v5, "_arg1":Landroid/bluetooth/BluetoothGattService;
    goto :goto_1

    .line 769
    .end local v5    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    nop

    .restart local v5    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    :goto_1
    move-object v1, v5

    .line 771
    .end local v5    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    .local v1, "_arg1":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->addService(ILandroid/bluetooth/BluetoothGattService;)V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    return v14

    .line 750
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothGattService;
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 754
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverReadPhy(ILjava/lang/String;)V

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    return v14

    .line 733
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 737
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 739
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 741
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 743
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 744
    .local v16, "_arg4":I
    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverSetPreferredPhy(ILjava/lang/String;III)V

    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    return v14

    .line 722
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 726
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 727
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    return v14

    .line 707
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 711
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v14

    nop

    .line 715
    .local v0, "_arg2":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 716
    .local v3, "_arg3":I
    invoke-virtual {v9, v1, v2, v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZI)V

    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    return v14

    .line 698
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 701
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    return v14

    .line 682
    .end local v0    # "_arg0":I
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 685
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ParcelUuid;

    .local v5, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 688
    .end local v5    # "_arg0":Landroid/os/ParcelUuid;
    :cond_3
    nop

    .restart local v5    # "_arg0":Landroid/os/ParcelUuid;
    :goto_2
    move-object v0, v5

    .line 691
    .end local v5    # "_arg0":Landroid/os/ParcelUuid;
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v1

    .line 692
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    return v14

    .line 659
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 663
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 665
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 667
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 669
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 671
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 673
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 675
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 676
    .local v22, "_arg7":I
    move-object v0, v9

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->leConnectionUpdate(ILjava/lang/String;IIIIII)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    return v14

    .line 646
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 650
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 653
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;I)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    return v14

    .line 633
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 637
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .restart local v2    # "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;I)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    return v14

    .line 622
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    return v14

    .line 609
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 613
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v14

    nop

    .line 616
    .local v0, "_arg2":Z
    :cond_4
    invoke-virtual {v9, v1, v2, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    return v14

    .line 598
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 602
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    return v14

    .line 583
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 587
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 591
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v14

    nop

    .line 592
    .local v0, "_arg3":Z
    :cond_5
    invoke-virtual {v9, v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IZ)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    return v14

    .line 566
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 570
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 572
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 574
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 576
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 577
    .local v16, "_arg4":[B
    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;II[B)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v14

    .line 551
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[B
    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 560
    .local v3, "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;II)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    return v14

    .line 532
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 536
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 538
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 540
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 542
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 544
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 545
    .local v18, "_arg5":[B
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;III[B)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    return v14

    .line 508
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":[B
    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 512
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 514
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 515
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 518
    .local v0, "_arg2":Landroid/os/ParcelUuid;
    move-object v3, v0

    goto :goto_3

    .end local v0    # "_arg2":Landroid/os/ParcelUuid;
    :cond_6
    move-object v3, v5

    .line 521
    .local v3, "_arg2":Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 523
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 525
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 526
    .local v17, "_arg5":I
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    return v14

    .line 493
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 497
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    .local v3, "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;II)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    return v14

    .line 475
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 479
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 482
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/os/ParcelUuid;

    .local v5, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_4

    .line 485
    .end local v5    # "_arg2":Landroid/os/ParcelUuid;
    :cond_7
    nop

    .restart local v5    # "_arg2":Landroid/os/ParcelUuid;
    :goto_4
    move-object v2, v5

    .line 487
    .end local v5    # "_arg2":Landroid/os/ParcelUuid;
    .local v2, "_arg2":Landroid/os/ParcelUuid;
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    return v14

    .line 464
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/ParcelUuid;
    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 468
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    return v14

    .line 453
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 457
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    return v14

    .line 442
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientReadPhy(ILjava/lang/String;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    return v14

    .line 425
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 429
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 433
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 435
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 436
    .restart local v16    # "_arg4":I
    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientSetPreferredPhy(ILjava/lang/String;III)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    return v14

    .line 414
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    return v14

    .line 395
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 399
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v3, v14

    goto :goto_5

    :cond_8
    move v3, v0

    .line 403
    .local v3, "_arg2":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 405
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move v5, v14

    goto :goto_6

    :cond_9
    move v5, v0

    .line 407
    .local v5, "_arg4":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 408
    .local v16, "_arg5":I
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v4, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZIZI)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    return v14

    .line 386
    .end local v3    # "_arg2":Z
    .end local v5    # "_arg4":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg5":I
    :pswitch_21
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    return v14

    .line 370
    .end local v0    # "_arg0":I
    :pswitch_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 373
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ParcelUuid;

    .local v5, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_7

    .line 376
    .end local v5    # "_arg0":Landroid/os/ParcelUuid;
    :cond_a
    nop

    .restart local v5    # "_arg0":Landroid/os/ParcelUuid;
    :goto_7
    move-object v0, v5

    .line 379
    .end local v5    # "_arg0":Landroid/os/ParcelUuid;
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v1

    .line 380
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    return v14

    .line 361
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    :pswitch_23
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v0

    .line 364
    .local v0, "_arg0":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    return v14

    .line 341
    .end local v0    # "_arg0":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :pswitch_24
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 344
    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/bluetooth/le/ScanResult;

    .local v5, "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_8

    .line 347
    .end local v5    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :cond_b
    nop

    .restart local v5    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :goto_8
    move-object v0, v5

    .line 350
    .end local v5    # "_arg0":Landroid/bluetooth/le/ScanResult;
    .local v0, "_arg0":Landroid/bluetooth/le/ScanResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v3

    .line 355
    .local v3, "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    return v14

    .line 330
    .end local v0    # "_arg0":Landroid/bluetooth/le/ScanResult;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :pswitch_25
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v14

    nop

    .line 335
    .local v0, "_arg1":Z
    :cond_c
    invoke-virtual {v9, v1, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingEnable(IZ)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    return v14

    .line 314
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_26
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 319
    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    .local v5, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_9

    .line 322
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :cond_d
    nop

    .restart local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :goto_9
    move-object v1, v5

    .line 324
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .local v1, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    return v14

    .line 298
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :pswitch_27
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 303
    sget-object v1, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .local v5, "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    goto :goto_a

    .line 306
    .end local v5    # "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    :cond_e
    nop

    .restart local v5    # "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    :goto_a
    move-object v1, v5

    .line 308
    .end local v5    # "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .local v1, "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    return v14

    .line 282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    :pswitch_28
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 287
    sget-object v1, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertisingSetParameters;

    .local v5, "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    goto :goto_b

    .line 290
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    :cond_f
    nop

    .restart local v5    # "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    :goto_b
    move-object v1, v5

    .line 292
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    .local v1, "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    return v14

    .line 266
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertisingSetParameters;
    :pswitch_29
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 271
    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    .local v5, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_c

    .line 274
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :cond_10
    nop

    .restart local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :goto_c
    move-object v1, v5

    .line 276
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .local v1, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    return v14

    .line 250
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :pswitch_2a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 255
    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    .restart local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_d

    .line 258
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :cond_11
    nop

    .restart local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :goto_d
    move-object v1, v5

    .line 260
    .end local v5    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .restart local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    return v14

    .line 235
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :pswitch_2b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    move v0, v14

    nop

    .line 241
    .local v0, "_arg1":Z
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .local v3, "_arg3":I
    invoke-virtual {v9, v1, v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->enableAdvertisingSet(IZII)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    return v14

    .line 226
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_2c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getOwnAddress(I)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    return v14

    .line 217
    .end local v0    # "_arg0":I
    :pswitch_2d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v0

    .line 220
    .local v0, "_arg0":Landroid/bluetooth/le/IAdvertisingSetCallback;
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    return v14

    .line 169
    .end local v0    # "_arg0":Landroid/bluetooth/le/IAdvertisingSetCallback;
    :pswitch_2e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 172
    sget-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 175
    .local v0, "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    move-object v1, v0

    goto :goto_e

    .end local v0    # "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    :cond_13
    move-object v1, v5

    .line 178
    .local v1, "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 179
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    .line 182
    .local v0, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    move-object v2, v0

    goto :goto_f

    .end local v0    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :cond_14
    move-object v2, v5

    .line 185
    .local v2, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 186
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    .line 189
    .local v0, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    move-object v3, v0

    goto :goto_10

    .end local v0    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    :cond_15
    move-object v3, v5

    .line 192
    .local v3, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 193
    sget-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .line 196
    .local v0, "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    move-object v4, v0

    goto :goto_11

    .end local v0    # "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    :cond_16
    move-object v4, v5

    .line 199
    .local v4, "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 200
    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    .line 203
    .local v0, "_arg4":Landroid/bluetooth/le/AdvertiseData;
    move-object v5, v0

    nop

    .line 206
    .end local v0    # "_arg4":Landroid/bluetooth/le/AdvertiseData;
    .local v5, "_arg4":Landroid/bluetooth/le/AdvertiseData;
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 208
    .local v15, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 210
    .local v16, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v17

    .line 211
    .local v17, "_arg7":Landroid/bluetooth/le/IAdvertisingSetCallback;
    move-object v0, v9

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    return v14

    .line 160
    .end local v1    # "_arg0":Landroid/bluetooth/le/AdvertisingSetParameters;
    .end local v2    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v3    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    .end local v4    # "_arg3":Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .end local v5    # "_arg4":Landroid/bluetooth/le/AdvertiseData;
    .end local v15    # "_arg5":I
    .end local v16    # "_arg6":I
    .end local v17    # "_arg7":Landroid/bluetooth/le/IAdvertisingSetCallback;
    :pswitch_2f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(I)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v14

    .line 151
    .end local v0    # "_arg0":I
    :pswitch_30
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v14

    .line 135
    .end local v0    # "_arg0":I
    :pswitch_31
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 138
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    .local v5, "_arg0":Landroid/app/PendingIntent;
    goto :goto_12

    .line 141
    .end local v5    # "_arg0":Landroid/app/PendingIntent;
    :cond_18
    nop

    .restart local v5    # "_arg0":Landroid/app/PendingIntent;
    :goto_12
    move-object v0, v5

    .line 144
    .end local v5    # "_arg0":Landroid/app/PendingIntent;
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v14

    .line 110
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 113
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_13

    .line 116
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :cond_19
    move-object v0, v5

    .line 119
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 120
    sget-object v1, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/ScanSettings;

    .local v5, "_arg1":Landroid/bluetooth/le/ScanSettings;
    goto :goto_14

    .line 123
    .end local v5    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    :cond_1a
    nop

    .restart local v5    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    :goto_14
    move-object v1, v5

    .line 126
    .end local v5    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    .local v1, "_arg1":Landroid/bluetooth/le/ScanSettings;
    sget-object v2, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 128
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    return v14

    .line 87
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_33
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 91
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 92
    sget-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanSettings;

    .line 95
    .local v0, "_arg1":Landroid/bluetooth/le/ScanSettings;
    move-object v2, v0

    goto :goto_15

    .end local v0    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    :cond_1b
    move-object v2, v5

    .line 98
    .local v2, "_arg1":Landroid/bluetooth/le/ScanSettings;
    :goto_15
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 100
    .local v7, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 101
    .local v8, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v15

    .line 103
    .local v15, "_arg3":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 104
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v9

    move v1, v6

    move-object v3, v7

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v14

    .line 78
    .end local v2    # "_arg1":Landroid/bluetooth/le/ScanSettings;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    .end local v15    # "_arg3":Ljava/util/List;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterScanner(I)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v14

    .line 62
    .end local v0    # "_arg0":I
    :pswitch_35
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    move-result-object v0

    .line 66
    .local v0, "_arg0":Landroid/bluetooth/le/IScannerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 67
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/WorkSource;

    .local v5, "_arg1":Landroid/os/WorkSource;
    goto :goto_16

    .line 70
    .end local v5    # "_arg1":Landroid/os/WorkSource;
    :cond_1c
    nop

    .restart local v5    # "_arg1":Landroid/os/WorkSource;
    :goto_16
    move-object v1, v5

    .line 72
    .end local v5    # "_arg1":Landroid/os/WorkSource;
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v14

    .line 52
    .end local v0    # "_arg0":Landroid/bluetooth/le/IScannerCallback;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :pswitch_36
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 55
    .local v0, "_arg0":[I
    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 58
    return v14

    .line 47
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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
