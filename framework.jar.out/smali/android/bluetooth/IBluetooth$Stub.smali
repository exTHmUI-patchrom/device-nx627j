.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x19

.field static final TRANSACTION_cancelDiscovery:I = 0x11

.field static final TRANSACTION_createBond:I = 0x17

.field static final TRANSACTION_createBondOutOfBand:I = 0x18

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x38

.field static final TRANSACTION_fetchRemoteUuids:I = 0x25

.field static final TRANSACTION_getAdapterConnectionState:I = 0x14

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBatteryLevel:I = 0x27

.field static final TRANSACTION_getBluetoothClass:I = 0xa

.field static final TRANSACTION_getBondState:I = 0x1b

.field static final TRANSACTION_getBondedDevices:I = 0x16

.field static final TRANSACTION_getConnectionState:I = 0x1e

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xe

.field static final TRANSACTION_getDiscoveryEndMillis:I = 0x13

.field static final TRANSACTION_getLeMaximumAdvertisingDataLength:I = 0x41

.field static final TRANSACTION_getMaxConnectedAudioDevices:I = 0x28

.field static final TRANSACTION_getMessageAccessPermission:I = 0x30

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x2e

.field static final TRANSACTION_getProfileConnectionState:I = 0x15

.field static final TRANSACTION_getRemoteAlias:I = 0x21

.field static final TRANSACTION_getRemoteClass:I = 0x23

.field static final TRANSACTION_getRemoteName:I = 0x1f

.field static final TRANSACTION_getRemoteType:I = 0x20

.field static final TRANSACTION_getRemoteUuids:I = 0x24

.field static final TRANSACTION_getScanMode:I = 0xc

.field static final TRANSACTION_getSimAccessPermission:I = 0x32

.field static final TRANSACTION_getSocketManager:I = 0x37

.field static final TRANSACTION_getSocketOpt:I = 0x48

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getSupportedProfiles:I = 0x1d

.field static final TRANSACTION_getTwsPlusPeerAddress:I = 0x2a

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x3c

.field static final TRANSACTION_isBondingInitiatedLocally:I = 0x1c

.field static final TRANSACTION_isDiscovering:I = 0x12

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isLe2MPhySupported:I = 0x3d

.field static final TRANSACTION_isLeCodedPhySupported:I = 0x3e

.field static final TRANSACTION_isLeExtendedAdvertisingSupported:I = 0x3f

.field static final TRANSACTION_isLePeriodicAdvertisingSupported:I = 0x40

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x39

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x3a

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x3b

.field static final TRANSACTION_isTwsPlusDevice:I = 0x29

.field static final TRANSACTION_onBrEdrDown:I = 0x46

.field static final TRANSACTION_onLeServiceUp:I = 0x44

.field static final TRANSACTION_registerCallback:I = 0x35

.field static final TRANSACTION_removeBond:I = 0x1a

.field static final TRANSACTION_reportActivityInfo:I = 0x42

.field static final TRANSACTION_requestActivityInfo:I = 0x43

.field static final TRANSACTION_sdpSearch:I = 0x26

.field static final TRANSACTION_sendConnectionStateChange:I = 0x34

.field static final TRANSACTION_setBluetoothClass:I = 0xb

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xf

.field static final TRANSACTION_setMessageAccessPermission:I = 0x31

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x2d

.field static final TRANSACTION_setPasskey:I = 0x2c

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x2f

.field static final TRANSACTION_setPin:I = 0x2b

.field static final TRANSACTION_setRemoteAlias:I = 0x22

.field static final TRANSACTION_setScanMode:I = 0xd

.field static final TRANSACTION_setSimAccessPermission:I = 0x33

.field static final TRANSACTION_setSocketOpt:I = 0x47

.field static final TRANSACTION_startDiscovery:I = 0x10

.field static final TRANSACTION_unregisterCallback:I = 0x36

.field static final TRANSACTION_updateQuietModeStatus:I = 0x45


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetooth;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 43
    const-string v10, "android.bluetooth.IBluetooth"

    .line 44
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_28

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 930
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 907
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 913
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 915
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 916
    .local v3, "_arg3_length":I
    if-gez v3, :cond_0

    .line 917
    const/4 v4, 0x0

    .local v4, "_arg3":[B
    goto :goto_0

    .line 920
    .end local v4    # "_arg3":[B
    :cond_0
    new-array v4, v3, [B

    .line 922
    .restart local v4    # "_arg3":[B
    :goto_0
    invoke-virtual {v6, v0, v1, v2, v4}, Landroid/bluetooth/IBluetooth$Stub;->getSocketOpt(III[B)I

    move-result v5

    .line 923
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 926
    return v11

    .line 889
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3_length":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":I
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 893
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 895
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 897
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 899
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 900
    .local v16, "_arg4":I
    move-object v0, v6

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->setSocketOpt(III[BI)I

    move-result v0

    .line 901
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    return v11

    .line 882
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    return v11

    .line 873
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v11

    nop

    .line 876
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->updateQuietModeStatus(Z)V

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    return v11

    .line 866
    .end local v0    # "_arg0":Z
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    return v11

    .line 853
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/ResultReceiver;

    .local v1, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 859
    .end local v1    # "_arg0":Landroid/os/ResultReceiver;
    :cond_2
    nop

    .restart local v1    # "_arg0":Landroid/os/ResultReceiver;
    :goto_1
    move-object v0, v1

    .line 861
    .end local v1    # "_arg0":Landroid/os/ResultReceiver;
    .local v0, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 862
    return v11

    .line 839
    .end local v0    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    .line 841
    .local v1, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    if-eqz v1, :cond_3

    .line 843
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    invoke-virtual {v1, v9, v11}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 847
    :cond_3
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    :goto_2
    return v11

    .line 831
    .end local v1    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getLeMaximumAdvertisingDataLength()I

    move-result v0

    .line 833
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    return v11

    .line 823
    .end local v0    # "_result":I
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    .line 825
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    return v11

    .line 815
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isLeExtendedAdvertisingSupported()Z

    move-result v0

    .line 817
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    return v11

    .line 807
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isLeCodedPhySupported()Z

    move-result v0

    .line 809
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    return v11

    .line 799
    .end local v0    # "_result":Z
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isLe2MPhySupported()Z

    move-result v0

    .line 801
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    return v11

    .line 791
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    .line 793
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    return v11

    .line 783
    .end local v0    # "_result":Z
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v0

    .line 785
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    return v11

    .line 775
    .end local v0    # "_result":Z
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    move-result v0

    .line 777
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    return v11

    .line 767
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    move-result v0

    .line 769
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    return v11

    .line 759
    .end local v0    # "_result":Z
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    move-result v0

    .line 761
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    return v11

    .line 751
    .end local v0    # "_result":Z
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v0

    .line 753
    .local v0, "_result":Landroid/bluetooth/IBluetoothSocketManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSocketManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_4
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 755
    return v11

    .line 742
    .end local v0    # "_result":Landroid/bluetooth/IBluetoothSocketManager;
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v0

    .line 745
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    return v11

    .line 733
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v0

    .line 736
    .restart local v0    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    return v11

    .line 713
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 716
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 719
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    move-object v0, v1

    .line 722
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 724
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 726
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 727
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    return v11

    .line 696
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 699
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 702
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_6
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    move-object v0, v1

    .line 705
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 706
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 707
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    return v11

    .line 681
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 684
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 687
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    move-object v0, v1

    .line 689
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 690
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    return v11

    .line 664
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 667
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 670
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_8
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_6
    move-object v0, v1

    .line 673
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 675
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    return v11

    .line 649
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 652
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 655
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_9
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    move-object v0, v1

    .line 657
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 658
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    return v11

    .line 632
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 635
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 638
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_a
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_8
    move-object v0, v1

    .line 641
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 643
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    return v11

    .line 617
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 620
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 623
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_b
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_9
    move-object v0, v1

    .line 625
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 626
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    return v11

    .line 600
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 603
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 606
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_c
    nop

    .line 609
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v0, v11

    nop

    .line 610
    .local v0, "_arg1":Z
    :cond_d
    invoke-virtual {v6, v1, v0}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    .line 611
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    return v11

    .line 579
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 582
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 585
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_e
    nop

    .line 588
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    move v0, v11

    nop

    .line 590
    .restart local v0    # "_arg1":Z
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 592
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 593
    .local v3, "_arg3":[B
    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v4

    .line 594
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    return v11

    .line 558
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":Z
    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 561
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 564
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_10
    nop

    .line 567
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    move v0, v11

    nop

    .line 569
    .restart local v0    # "_arg1":Z
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 572
    .restart local v3    # "_arg3":[B
    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v4

    .line 573
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    return v11

    .line 543
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":Z
    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 546
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 549
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_12
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_d
    move-object v0, v1

    .line 551
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getTwsPlusPeerAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    return v11

    .line 528
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 531
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 534
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_13
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_e
    move-object v0, v1

    .line 536
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->isTwsPlusDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 537
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    return v11

    .line 520
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getMaxConnectedAudioDevices()I

    move-result v0

    .line 522
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    return v11

    .line 505
    .end local v0    # "_result":I
    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 508
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 511
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_14
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_f
    move-object v0, v1

    .line 513
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 514
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    return v11

    .line 483
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 486
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 489
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_15
    move-object v0, v1

    .line 492
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 493
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_11

    .line 496
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    :cond_16
    nop

    .line 498
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v2

    .line 499
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    return v11

    .line 468
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_result":Z
    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 471
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 474
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_17
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_12
    move-object v0, v1

    .line 476
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 477
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    return v11

    .line 453
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 456
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 459
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_18
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_13
    move-object v0, v1

    .line 461
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 462
    .local v1, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 464
    return v11

    .line 438
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":[Landroid/os/ParcelUuid;
    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 441
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 444
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_19
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_14
    move-object v0, v1

    .line 446
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 447
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    return v11

    .line 421
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 424
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .line 427
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1a
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_15
    move-object v0, v1

    .line 430
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v2

    .line 432
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    return v11

    .line 406
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 409
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 412
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1b
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_16
    move-object v0, v1

    .line 414
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    return v11

    .line 391
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 394
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 397
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1c
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_17
    move-object v0, v1

    .line 399
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 400
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return v11

    .line 376
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 379
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .line 382
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1d
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_18
    move-object v0, v1

    .line 384
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    return v11

    .line 361
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 364
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .line 367
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1e
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_19
    move-object v0, v1

    .line 369
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 370
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    return v11

    .line 353
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getSupportedProfiles()J

    move-result-wide v0

    .line 355
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 357
    return v11

    .line 338
    .end local v0    # "_result":J
    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 341
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    .line 344
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1f
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1a
    move-object v0, v1

    .line 346
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 347
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    return v11

    .line 323
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 326
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .line 329
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_20
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1b
    move-object v0, v1

    .line 331
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 332
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    return v11

    .line 308
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 311
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 314
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_21
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1c
    move-object v0, v1

    .line 316
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 317
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return v11

    .line 293
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 296
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .line 299
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_22
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1d
    move-object v0, v1

    .line 301
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 302
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    return v11

    .line 269
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Z
    :pswitch_30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 272
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 275
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_23
    move-object v0, v1

    .line 278
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    .line 281
    sget-object v1, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/OobData;

    .local v1, "_arg2":Landroid/bluetooth/OobData;
    goto :goto_1f

    .line 284
    .end local v1    # "_arg2":Landroid/bluetooth/OobData;
    :cond_24
    nop

    .line 286
    .restart local v1    # "_arg2":Landroid/bluetooth/OobData;
    :goto_1f
    invoke-virtual {v6, v0, v2, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    move-result v3

    .line 287
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    return v11

    .line 252
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg2":Landroid/bluetooth/OobData;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 255
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_20

    .line 258
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_25
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_20
    move-object v0, v1

    .line 261
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 263
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return v11

    .line 244
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 246
    .local v0, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 248
    return v11

    .line 234
    .end local v0    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :pswitch_33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v1

    .line 238
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return v11

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v0

    .line 228
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return v11

    .line 218
    .end local v0    # "_result":I
    :pswitch_35
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoveryEndMillis()J

    move-result-wide v0

    .line 220
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    return v11

    .line 210
    .end local v0    # "_result":J
    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v0

    .line 212
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return v11

    .line 202
    .end local v0    # "_result":Z
    :pswitch_37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v0

    .line 204
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return v11

    .line 194
    .end local v0    # "_result":Z
    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v0

    .line 196
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return v11

    .line 184
    .end local v0    # "_result":Z
    :pswitch_39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v1

    .line 188
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return v11

    .line 176
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v0

    .line 178
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v11

    .line 164
    .end local v0    # "_result":I
    :pswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v2

    .line 170
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return v11

    .line 156
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v0

    .line 158
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v11

    .line 141
    .end local v0    # "_result":I
    :pswitch_3d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 144
    sget-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    .local v1, "_arg0":Landroid/bluetooth/BluetoothClass;
    goto :goto_21

    .line 147
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothClass;
    :cond_26
    nop

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothClass;
    :goto_21
    move-object v0, v1

    .line 149
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothClass;
    .local v0, "_arg0":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z

    move-result v1

    .line 150
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return v11

    .line 127
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothClass;
    .end local v1    # "_result":Z
    :pswitch_3e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 129
    .local v1, "_result":Landroid/bluetooth/BluetoothClass;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v1, :cond_27

    .line 131
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v1, v9, v11}, Landroid/bluetooth/BluetoothClass;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 135
    :cond_27
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_22
    return v11

    .line 119
    .end local v1    # "_result":Landroid/bluetooth/BluetoothClass;
    :pswitch_3f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v11

    .line 109
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v1

    .line 113
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v11

    .line 101
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_41
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 103
    .local v0, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 105
    return v11

    .line 93
    .end local v0    # "_result":[Landroid/os/ParcelUuid;
    :pswitch_42
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v11

    .line 85
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disable()Z

    move-result v0

    .line 87
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v11

    .line 77
    .end local v0    # "_result":Z
    :pswitch_44
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v0

    .line 79
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v11

    .line 69
    .end local v0    # "_result":Z
    :pswitch_45
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v0

    .line 71
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return v11

    .line 61
    .end local v0    # "_result":Z
    :pswitch_46
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    move-result v0

    .line 63
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return v11

    .line 53
    .end local v0    # "_result":I
    :pswitch_47
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v0

    .line 55
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v11

    .line 48
    .end local v0    # "_result":Z
    :cond_28
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
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
