.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_computeBatteryTimeRemaining:I = 0x12

.field static final TRANSACTION_computeChargeTimeRemaining:I = 0x13

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x4b

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x4c

.field static final TRANSACTION_getBatteryStat:I = 0x59

.field static final TRANSACTION_getCellularBatteryStats:I = 0x51

.field static final TRANSACTION_getGpsBatteryStats:I = 0x53

.field static final TRANSACTION_getStatistics:I = 0xf

.field static final TRANSACTION_getStatisticsStream:I = 0x10

.field static final TRANSACTION_getWifiBatteryStats:I = 0x52

.field static final TRANSACTION_isCharging:I = 0x11

.field static final TRANSACTION_noteBleScanResults:I = 0x50

.field static final TRANSACTION_noteBleScanStarted:I = 0x4d

.field static final TRANSACTION_noteBleScanStopped:I = 0x4e

.field static final TRANSACTION_noteBluetoothControllerActivity:I = 0x56

.field static final TRANSACTION_noteChangeWakelockFromSource:I = 0x1c

.field static final TRANSACTION_noteConnectivityChanged:I = 0x2b

.field static final TRANSACTION_noteDeviceIdleMode:I = 0x49

.field static final TRANSACTION_noteEvent:I = 0x14

.field static final TRANSACTION_noteFlashlightOff:I = 0xa

.field static final TRANSACTION_noteFlashlightOn:I = 0x9

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x3a

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x40

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x3b

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x41

.field static final TRANSACTION_noteGpsChanged:I = 0x24

.field static final TRANSACTION_noteGpsSignalQuality:I = 0x25

.field static final TRANSACTION_noteInteractive:I = 0x2a

.field static final TRANSACTION_noteJobFinish:I = 0x18

.field static final TRANSACTION_noteJobStart:I = 0x17

.field static final TRANSACTION_noteLongPartialWakelockFinish:I = 0x20

.field static final TRANSACTION_noteLongPartialWakelockFinishFromSource:I = 0x21

.field static final TRANSACTION_noteLongPartialWakelockStart:I = 0x1e

.field static final TRANSACTION_noteLongPartialWakelockStartFromSource:I = 0x1f

.field static final TRANSACTION_noteMobileRadioPowerState:I = 0x2c

.field static final TRANSACTION_noteModemControllerActivity:I = 0x57

.field static final TRANSACTION_noteNetworkInterfaceType:I = 0x47

.field static final TRANSACTION_noteNetworkStatsEnabled:I = 0x48

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x30

.field static final TRANSACTION_notePhoneOff:I = 0x2e

.field static final TRANSACTION_notePhoneOn:I = 0x2d

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x2f

.field static final TRANSACTION_notePhoneState:I = 0x31

.field static final TRANSACTION_noteResetAudio:I = 0x8

.field static final TRANSACTION_noteResetBleScan:I = 0x4f

.field static final TRANSACTION_noteResetCamera:I = 0xd

.field static final TRANSACTION_noteResetFlashlight:I = 0xe

.field static final TRANSACTION_noteResetVideo:I = 0x7

.field static final TRANSACTION_noteScreenBrightness:I = 0x27

.field static final TRANSACTION_noteScreenState:I = 0x26

.field static final TRANSACTION_noteStartAudio:I = 0x5

.field static final TRANSACTION_noteStartCamera:I = 0xb

.field static final TRANSACTION_noteStartSensor:I = 0x1

.field static final TRANSACTION_noteStartVideo:I = 0x3

.field static final TRANSACTION_noteStartWakelock:I = 0x19

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x1b

.field static final TRANSACTION_noteStopAudio:I = 0x6

.field static final TRANSACTION_noteStopCamera:I = 0xc

.field static final TRANSACTION_noteStopSensor:I = 0x2

.field static final TRANSACTION_noteStopVideo:I = 0x4

.field static final TRANSACTION_noteStopWakelock:I = 0x1a

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x1d

.field static final TRANSACTION_noteSyncFinish:I = 0x16

.field static final TRANSACTION_noteSyncStart:I = 0x15

.field static final TRANSACTION_noteUserActivity:I = 0x28

.field static final TRANSACTION_noteVibratorOff:I = 0x23

.field static final TRANSACTION_noteVibratorOn:I = 0x22

.field static final TRANSACTION_noteWakeUp:I = 0x29

.field static final TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x44

.field static final TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x45

.field static final TRANSACTION_noteWifiControllerActivity:I = 0x58

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x3f

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x3e

.field static final TRANSACTION_noteWifiOff:I = 0x33

.field static final TRANSACTION_noteWifiOn:I = 0x32

.field static final TRANSACTION_noteWifiRadioPowerState:I = 0x46

.field static final TRANSACTION_noteWifiRssiChanged:I = 0x39

.field static final TRANSACTION_noteWifiRunning:I = 0x34

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x35

.field static final TRANSACTION_noteWifiScanStarted:I = 0x3c

.field static final TRANSACTION_noteWifiScanStartedFromSource:I = 0x42

.field static final TRANSACTION_noteWifiScanStopped:I = 0x3d

.field static final TRANSACTION_noteWifiScanStoppedFromSource:I = 0x43

.field static final TRANSACTION_noteWifiState:I = 0x37

.field static final TRANSACTION_noteWifiStopped:I = 0x36

.field static final TRANSACTION_noteWifiSupplicantStateChanged:I = 0x38

.field static final TRANSACTION_setBatteryState:I = 0x4a

.field static final TRANSACTION_takeUidSnapshot:I = 0x54

.field static final TRANSACTION_takeUidSnapshots:I = 0x55


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IBatteryStats;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 40
    const-string v10, "com.android.internal.app.IBatteryStats"

    .line 41
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v9, 0x1

    if-eq v13, v0, :cond_26

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v13, :pswitch_data_0

    .line 1120
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1110
    :pswitch_0
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1113
    .local v0, "_arg0":[I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryStat([I)[Landroid/os/Bundle;

    move-result-object v1

    .line 1114
    .local v1, "_result":[Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1116
    return v9

    .line 1097
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    sget-object v0, Landroid/net/wifi/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    .local v2, "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_0

    .line 1103
    .end local v2    # "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_0
    nop

    .restart local v2    # "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    :goto_0
    move-object v0, v2

    .line 1105
    .end local v2    # "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v0, "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1106
    return v9

    .line 1084
    .end local v0    # "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    :pswitch_2
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    sget-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/ModemActivityInfo;

    .local v2, "_arg0":Landroid/telephony/ModemActivityInfo;
    goto :goto_1

    .line 1090
    .end local v2    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :cond_1
    nop

    .restart local v2    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :goto_1
    move-object v0, v2

    .line 1092
    .end local v2    # "_arg0":Landroid/telephony/ModemActivityInfo;
    .local v0, "_arg0":Landroid/telephony/ModemActivityInfo;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    .line 1093
    return v9

    .line 1071
    .end local v0    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :pswitch_3
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    sget-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .local v2, "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    goto :goto_2

    .line 1077
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_2
    nop

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :goto_2
    move-object v0, v2

    .line 1079
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .local v0, "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1080
    return v9

    .line 1061
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :pswitch_4
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1064
    .local v0, "_arg0":[I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    .line 1065
    .local v1, "_result":[Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1067
    return v9

    .line 1045
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[Landroid/os/health/HealthStatsParceler;
    :pswitch_5
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1048
    .local v1, "_arg0":I
    invoke-virtual {v12, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v2

    .line 1049
    .local v2, "_result":Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    if-eqz v2, :cond_3

    .line 1051
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    invoke-virtual {v2, v15, v9}, Landroid/os/health/HealthStatsParceler;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 1055
    :cond_3
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    :goto_3
    return v9

    .line 1031
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/health/HealthStatsParceler;
    :pswitch_6
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    .line 1033
    .local v1, "_result":Landroid/os/connectivity/GpsBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    if-eqz v1, :cond_4

    .line 1035
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    invoke-virtual {v1, v15, v9}, Landroid/os/connectivity/GpsBatteryStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 1039
    :cond_4
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    :goto_4
    return v9

    .line 1017
    .end local v1    # "_result":Landroid/os/connectivity/GpsBatteryStats;
    :pswitch_7
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    .line 1019
    .local v1, "_result":Landroid/os/connectivity/WifiBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    if-eqz v1, :cond_5

    .line 1021
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    invoke-virtual {v1, v15, v9}, Landroid/os/connectivity/WifiBatteryStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 1025
    :cond_5
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    :goto_5
    return v9

    .line 1003
    .end local v1    # "_result":Landroid/os/connectivity/WifiBatteryStats;
    :pswitch_8
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    .line 1005
    .local v1, "_result":Landroid/os/connectivity/CellularBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    if-eqz v1, :cond_6

    .line 1007
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    invoke-virtual {v1, v15, v9}, Landroid/os/connectivity/CellularBatteryStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 1011
    :cond_6
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    :goto_6
    return v9

    .line 987
    .end local v1    # "_result":Landroid/os/connectivity/CellularBatteryStats;
    :pswitch_9
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 990
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .local v2, "_arg0":Landroid/os/WorkSource;
    goto :goto_7

    .line 993
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_7
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_7
    move-object v0, v2

    .line 996
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 997
    .local v1, "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults(Landroid/os/WorkSource;I)V

    .line 998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    return v9

    .line 980
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":I
    :pswitch_a
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetBleScan()V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    return v9

    .line 964
    :pswitch_b
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 967
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_8

    .line 970
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_8
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_8
    move-object v1, v2

    .line 973
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .local v1, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v9

    nop

    .line 974
    .local v0, "_arg1":Z
    :cond_9
    invoke-virtual {v12, v1, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    return v9

    .line 948
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_c
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 951
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_9

    .line 954
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_a
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_9
    move-object v1, v2

    .line 957
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v9

    nop

    .line 958
    .restart local v0    # "_arg1":Z
    :cond_b
    invoke-virtual {v12, v1, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    return v9

    .line 940
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_d
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v0

    .line 942
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 944
    return v9

    .line 932
    .end local v0    # "_result":J
    :pswitch_e
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v0

    .line 934
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 936
    return v9

    .line 909
    .end local v0    # "_result":J
    :pswitch_f
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 913
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 915
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 917
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 919
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 921
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 923
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 925
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 926
    .local v22, "_arg7":I
    move-object v0, v12

    move v1, v11

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIIII)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    return v9

    .line 896
    .end local v11    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    :pswitch_10
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 900
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 903
    .local v2, "_arg2":I
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    return v9

    .line 889
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_11
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    return v9

    .line 878
    :pswitch_12
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 883
    .local v1, "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    return v9

    .line 865
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 869
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 871
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 872
    .local v3, "_arg2":I
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    return v9

    .line 851
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_14
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 854
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .local v2, "_arg0":Landroid/os/WorkSource;
    goto :goto_a

    .line 857
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_c
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_a
    move-object v0, v2

    .line 859
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    return v9

    .line 835
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_15
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 838
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_b

    .line 841
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_d
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_b
    move-object v0, v2

    .line 844
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    .local v1, "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    return v9

    .line 821
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":I
    :pswitch_16
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 824
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    .line 827
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_e
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_c
    move-object v0, v2

    .line 829
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    return v9

    .line 807
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_17
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 810
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_d

    .line 813
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_f
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_d
    move-object v0, v2

    .line 815
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    return v9

    .line 793
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_18
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 796
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_e

    .line 799
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_10
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_e
    move-object v0, v2

    .line 801
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    return v9

    .line 779
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_19
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 782
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_f

    .line 785
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_11
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_f
    move-object v0, v2

    .line 787
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    return v9

    .line 770
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_1a
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 773
    .local v0, "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    return v9

    .line 761
    .end local v0    # "_arg0":I
    :pswitch_1b
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 764
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    return v9

    .line 752
    .end local v0    # "_arg0":I
    :pswitch_1c
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 755
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    return v9

    .line 743
    .end local v0    # "_arg0":I
    :pswitch_1d
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 746
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    return v9

    .line 734
    .end local v0    # "_arg0":I
    :pswitch_1e
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 737
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    return v9

    .line 725
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 728
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    return v9

    .line 716
    .end local v0    # "_arg0":I
    :pswitch_20
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 719
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    return v9

    .line 705
    .end local v0    # "_arg0":I
    :pswitch_21
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    move v0, v9

    nop

    .line 710
    .local v0, "_arg1":Z
    :cond_12
    invoke-virtual {v12, v1, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    return v9

    .line 694
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_22
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 698
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    return v9

    .line 680
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 683
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    goto :goto_10

    .line 686
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_13
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_10
    move-object v0, v2

    .line 688
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    return v9

    .line 659
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_24
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 662
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    goto :goto_11

    .line 665
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :cond_14
    move-object v0, v2

    .line 668
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 669
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/WorkSource;

    .local v2, "_arg1":Landroid/os/WorkSource;
    goto :goto_12

    .line 672
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :cond_15
    nop

    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    :goto_12
    move-object v1, v2

    .line 674
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    return v9

    .line 645
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :pswitch_25
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 648
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/WorkSource;

    .local v2, "_arg0":Landroid/os/WorkSource;
    goto :goto_13

    .line 651
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :cond_16
    nop

    .restart local v2    # "_arg0":Landroid/os/WorkSource;
    :goto_13
    move-object v0, v2

    .line 653
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    return v9

    .line 638
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_26
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    return v9

    .line 631
    :pswitch_27
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    return v9

    .line 622
    :pswitch_28
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 625
    .local v0, "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    return v9

    .line 611
    .end local v0    # "_arg0":I
    :pswitch_29
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 615
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    move v0, v9

    nop

    .line 616
    .local v0, "_arg1":Z
    :cond_17
    invoke-virtual {v12, v1, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    return v9

    .line 597
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_2a
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 600
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/SignalStrength;

    .local v2, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_14

    .line 603
    .end local v2    # "_arg0":Landroid/telephony/SignalStrength;
    :cond_18
    nop

    .restart local v2    # "_arg0":Landroid/telephony/SignalStrength;
    :goto_14
    move-object v0, v2

    .line 605
    .end local v2    # "_arg0":Landroid/telephony/SignalStrength;
    .local v0, "_arg0":Landroid/telephony/SignalStrength;
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    return v9

    .line 590
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    :pswitch_2b
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    return v9

    .line 583
    :pswitch_2c
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    return v9

    .line 570
    :pswitch_2d
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 574
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 576
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 577
    .restart local v3    # "_arg2":I
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v9

    .line 559
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_2e
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 563
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    return v9

    .line 550
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    move v0, v9

    nop

    .line 553
    .local v0, "_arg0":Z
    :cond_19
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    return v9

    .line 539
    .end local v0    # "_arg0":Z
    :pswitch_30
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 544
    .local v1, "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    return v9

    .line 528
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_31
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 532
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 533
    .restart local v1    # "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    return v9

    .line 519
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_32
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 522
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    return v9

    .line 510
    .end local v0    # "_arg0":I
    :pswitch_33
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 513
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    return v9

    .line 501
    .end local v0    # "_arg0":I
    :pswitch_34
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 504
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality(I)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    return v9

    .line 480
    .end local v0    # "_arg0":I
    :pswitch_35
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 483
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .local v0, "_arg0":Landroid/os/WorkSource;
    goto :goto_15

    .line 486
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :cond_1a
    move-object v0, v2

    .line 489
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 490
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/WorkSource;

    .local v2, "_arg1":Landroid/os/WorkSource;
    goto :goto_16

    .line 493
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :cond_1b
    nop

    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    :goto_16
    move-object v1, v2

    .line 495
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v9

    .line 471
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :pswitch_36
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 474
    .local v0, "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    return v9

    .line 460
    .end local v0    # "_arg0":I
    :pswitch_37
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 465
    .local v1, "_arg1":J
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    return v9

    .line 442
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_38
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 449
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .local v2, "_arg2":Landroid/os/WorkSource;
    goto :goto_17

    .line 452
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :cond_1c
    nop

    .line 454
    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    :goto_17
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    return v9

    .line 429
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :pswitch_39
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .local v2, "_arg2":I
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    return v9

    .line 411
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_3a
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 418
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .local v2, "_arg2":Landroid/os/WorkSource;
    goto :goto_18

    .line 421
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :cond_1d
    nop

    .line 423
    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    :goto_18
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    return v9

    .line 398
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :pswitch_3b
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg2":I
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    return v9

    .line 376
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_3c
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 379
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 382
    .local v0, "_arg0":Landroid/os/WorkSource;
    move-object v1, v0

    goto :goto_19

    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :cond_1e
    move-object v1, v2

    .line 385
    .local v1, "_arg0":Landroid/os/WorkSource;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 387
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 392
    .local v11, "_arg4":I
    move-object v0, v12

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    return v9

    .line 337
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":I
    :pswitch_3d
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 340
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_1a

    .line 343
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_1f
    move-object v1, v2

    .line 346
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 348
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 350
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 352
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 354
    .restart local v19    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 355
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 358
    .local v6, "_arg5":Landroid/os/WorkSource;
    :goto_1b
    move-object v6, v2

    goto :goto_1c

    .end local v6    # "_arg5":Landroid/os/WorkSource;
    :cond_20
    goto :goto_1b

    .line 361
    .restart local v6    # "_arg5":Landroid/os/WorkSource;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 363
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 365
    .local v21, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 367
    .local v22, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 369
    .local v23, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    move v11, v9

    goto :goto_1d

    :cond_21
    move v11, v0

    .line 370
    .local v11, "_arg10":Z
    :goto_1d
    move-object v0, v12

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v7, v20

    move-object/from16 v8, v21

    move v13, v9

    move-object/from16 v9, v22

    move-object/from16 v24, v10

    move/from16 v10, v23

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v24, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    return v13

    .line 313
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg5":Landroid/os/WorkSource;
    .end local v11    # "_arg10":Z
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":Ljava/lang/String;
    .end local v22    # "_arg8":Ljava/lang/String;
    .end local v23    # "_arg9":I
    .end local v24    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move v13, v9

    move-object/from16 v24, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v24    # "descriptor":Ljava/lang/String;
    move-object/from16 v7, v24

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    .end local v24    # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 316
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_1e

    .line 319
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_22
    move-object v1, v2

    .line 322
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 324
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 328
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 330
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    move v6, v13

    goto :goto_1f

    :cond_23
    move v6, v0

    .line 331
    .local v6, "_arg5":Z
    :goto_1f
    move-object v0, v12

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    return v13

    .line 296
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg5":Z
    .end local v7    # "descriptor":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_3f
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 300
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 302
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 304
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 307
    .restart local v11    # "_arg4":I
    move-object v0, v12

    move v1, v6

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    return v13

    .line 277
    .end local v6    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_40
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 281
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 283
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 289
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v6, v13

    goto :goto_20

    :cond_24
    move v6, v0

    .line 290
    .local v6, "_arg5":Z
    :goto_20
    move-object v0, v12

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    return v13

    .line 264
    .end local v6    # "_arg5":Z
    .end local v7    # "descriptor":Ljava/lang/String;
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v11    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_41
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg2":I
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;II)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    return v13

    .line 253
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_42
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1    # "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    return v13

    .line 242
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_43
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1    # "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    return v13

    .line 231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_44
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1    # "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    return v13

    .line 218
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_45
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg2":I
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    return v13

    .line 210
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_46
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v0

    .line 212
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    return v13

    .line 202
    .end local v0    # "_result":J
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_47
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v0

    .line 204
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    return v13

    .line 194
    .end local v0    # "_result":J
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_48
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    move-result v0

    .line 196
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return v13

    .line 180
    .end local v0    # "_result":Z
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_49
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 182
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v1, :cond_25

    .line 184
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v1, v15, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 188
    :cond_25
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    :goto_21
    return v13

    .line 172
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v0

    .line 174
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 176
    return v13

    .line 165
    .end local v0    # "_result":[B
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4b
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v13

    .line 158
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4c
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v13

    .line 149
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4d
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v13

    .line 140
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4e
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    return v13

    .line 131
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4f
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v13

    .line 122
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_50
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v13

    .line 115
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_51
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v13

    .line 108
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_52
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v13

    .line 99
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_53
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v13

    .line 90
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_54
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v13

    .line 81
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_55
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v13

    .line 72
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_56
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v13

    .line 61
    .end local v0    # "_arg0":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_57
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v13

    .line 50
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_58
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .restart local v1    # "_arg1":I
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v13

    .line 45
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v7    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :cond_26
    move v13, v9

    move-object v7, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v7    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
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
