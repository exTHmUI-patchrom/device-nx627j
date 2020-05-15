.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x45

.field static final TRANSACTION_checkMobileProvisioning:I = 0x32

.field static final TRANSACTION_establishVpn:I = 0x29

.field static final TRANSACTION_factoryReset:I = 0x48

.field static final TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkForUid:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x11

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0x10

.field static final TRANSACTION_getAllNetworks:I = 0x9

.field static final TRANSACTION_getAllVpnInfo:I = 0x2d

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x31

.field static final TRANSACTION_getCaptivePortalServerUrl:I = 0x4b

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final TRANSACTION_getGlobalProxy:I = 0x24

.field static final TRANSACTION_getLastTetherError:I = 0x16

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2c

.field static final TRANSACTION_getLinkProperties:I = 0xe

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x33

.field static final TRANSACTION_getMultipathPreference:I = 0x43

.field static final TRANSACTION_getNetworkCapabilities:I = 0xf

.field static final TRANSACTION_getNetworkForType:I = 0x8

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkInfoForUid:I = 0x6

.field static final TRANSACTION_getNetworkWatchlistConfigHash:I = 0x4c

.field static final TRANSACTION_getProxyForNetwork:I = 0x26

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x44

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x20

.field static final TRANSACTION_getTetherableIfaces:I = 0x1a

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1e

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1f

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1d

.field static final TRANSACTION_getTetheredIfaces:I = 0x1b

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1c

.field static final TRANSACTION_getVpnConfig:I = 0x2a

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x12

.field static final TRANSACTION_isAlwaysOnVpnPackageSupported:I = 0x2f

.field static final TRANSACTION_isNetworkSupported:I = 0xb

.field static final TRANSACTION_isTetheringSupported:I = 0x17

.field static final TRANSACTION_listenForNetwork:I = 0x3d

.field static final TRANSACTION_pendingListenForNetwork:I = 0x3e

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x3b

.field static final TRANSACTION_prepareVpn:I = 0x27

.field static final TRANSACTION_registerNetworkAgent:I = 0x39

.field static final TRANSACTION_registerNetworkFactory:I = 0x36

.field static final TRANSACTION_releaseNetworkRequest:I = 0x3f

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x3c

.field static final TRANSACTION_removeVpnAddress:I = 0x46

.field static final TRANSACTION_reportInetCondition:I = 0x22

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x23

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x37

.field static final TRANSACTION_requestNetwork:I = 0x3a

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x13

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x40

.field static final TRANSACTION_setAirplaneMode:I = 0x35

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x30

.field static final TRANSACTION_setAvoidUnvalidated:I = 0x41

.field static final TRANSACTION_setGlobalProxy:I = 0x25

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x34

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x47

.field static final TRANSACTION_setUsbTethering:I = 0x21

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x28

.field static final TRANSACTION_startCaptivePortalApp:I = 0x42

.field static final TRANSACTION_startLegacyVpn:I = 0x2b

.field static final TRANSACTION_startNattKeepalive:I = 0x49

.field static final TRANSACTION_startTethering:I = 0x18

.field static final TRANSACTION_stopKeepalive:I = 0x4a

.field static final TRANSACTION_stopTethering:I = 0x19

.field static final TRANSACTION_tether:I = 0x14

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x38

.field static final TRANSACTION_untether:I = 0x15

.field static final TRANSACTION_updateLockdownVpn:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.net.IConnectivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/net/IConnectivityManager;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 42
    const-string v12, "android.net.IConnectivityManager"

    .line 43
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_42

    const/4 v6, 0x0

    const/4 v0, 0x0

    packed-switch v9, :pswitch_data_0

    .line 1134
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1126
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkWatchlistConfigHash()[B

    move-result-object v0

    .line 1128
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1130
    return v13

    .line 1118
    .end local v0    # "_result":[B
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getCaptivePortalServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1122
    return v13

    .line 1102
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .local v0, "_arg0":Landroid/net/Network;
    goto :goto_0

    .line 1108
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_0
    nop

    .line 1111
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1112
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    return v13

    .line 1071
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .local v1, "_arg0":Landroid/net/Network;
    goto :goto_1

    .line 1077
    .end local v1    # "_arg0":Landroid/net/Network;
    :cond_1
    move-object v1, v0

    .line 1080
    .restart local v1    # "_arg0":Landroid/net/Network;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1082
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1083
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 1086
    .local v3, "_arg2":Landroid/os/Messenger;
    :goto_2
    move-object v3, v0

    goto :goto_3

    .end local v3    # "_arg2":Landroid/os/Messenger;
    :cond_2
    goto :goto_2

    .line 1089
    .restart local v3    # "_arg2":Landroid/os/Messenger;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 1091
    .local v15, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1093
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1095
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1096
    .local v18, "_arg6":Ljava/lang/String;
    move-object v0, v8

    move v2, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    .line 1097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    return v13

    .line 1064
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v3    # "_arg2":Landroid/os/Messenger;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    return v13

    .line 1054
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Network;

    .line 1057
    .local v0, "_arg0":[Landroid/net/Network;
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v1

    .line 1058
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    return v13

    .line 1042
    .end local v0    # "_arg0":[Landroid/net/Network;
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1047
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v2

    .line 1048
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    return v13

    .line 1030
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1035
    .restart local v1    # "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v2

    .line 1036
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    return v13

    .line 1020
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1023
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v1

    .line 1024
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    return v13

    .line 1005
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .local v0, "_arg0":Landroid/net/Network;
    goto :goto_4

    .line 1011
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_3
    nop

    .line 1013
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_4
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v1

    .line 1014
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    return v13

    .line 991
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 994
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .restart local v0    # "_arg0":Landroid/net/Network;
    goto :goto_5

    .line 997
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_4
    nop

    .line 999
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_5
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    return v13

    .line 977
    .end local v0    # "_arg0":Landroid/net/Network;
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 980
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .restart local v0    # "_arg0":Landroid/net/Network;
    goto :goto_6

    .line 983
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_5
    nop

    .line 985
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_6
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->setAvoidUnvalidated(Landroid/net/Network;)V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    return v13

    .line 959
    .end local v0    # "_arg0":Landroid/net/Network;
    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 962
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .restart local v0    # "_arg0":Landroid/net/Network;
    goto :goto_7

    .line 965
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_6
    nop

    .line 968
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v13

    goto :goto_8

    :cond_7
    move v1, v6

    .line 970
    .local v1, "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v6, v13

    nop

    :cond_8
    move v2, v6

    .line 971
    .local v2, "_arg2":Z
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    return v13

    .line 945
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 948
    sget-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .local v0, "_arg0":Landroid/net/NetworkRequest;
    goto :goto_9

    .line 951
    .end local v0    # "_arg0":Landroid/net/NetworkRequest;
    :cond_9
    nop

    .line 953
    .restart local v0    # "_arg0":Landroid/net/NetworkRequest;
    :goto_9
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    return v13

    .line 924
    .end local v0    # "_arg0":Landroid/net/NetworkRequest;
    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 927
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_a

    .line 930
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_a
    move-object v1, v0

    .line 933
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 934
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .local v0, "_arg1":Landroid/app/PendingIntent;
    goto :goto_b

    .line 937
    .end local v0    # "_arg1":Landroid/app/PendingIntent;
    :cond_b
    nop

    .line 939
    .restart local v0    # "_arg1":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual {v8, v1, v0}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    return v13

    .line 894
    .end local v0    # "_arg1":Landroid/app/PendingIntent;
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 897
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_c

    .line 900
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_c
    move-object v1, v0

    .line 903
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 904
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .local v0, "_arg1":Landroid/os/Messenger;
    goto :goto_d

    .line 907
    .end local v0    # "_arg1":Landroid/os/Messenger;
    :cond_d
    nop

    .line 910
    .restart local v0    # "_arg1":Landroid/os/Messenger;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 911
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v8, v1, v0, v2}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v3

    .line 912
    .local v3, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    if-eqz v3, :cond_e

    .line 914
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {v3, v11, v13}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 918
    :cond_e
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    :goto_e
    return v13

    .line 880
    .end local v0    # "_arg1":Landroid/os/Messenger;
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/net/NetworkRequest;
    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 883
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .local v0, "_arg0":Landroid/app/PendingIntent;
    goto :goto_f

    .line 886
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :cond_f
    nop

    .line 888
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_f
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    return v13

    .line 852
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 855
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_10

    .line 858
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_10
    move-object v1, v0

    .line 861
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 862
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .local v0, "_arg1":Landroid/app/PendingIntent;
    goto :goto_11

    .line 865
    .end local v0    # "_arg1":Landroid/app/PendingIntent;
    :cond_11
    nop

    .line 867
    .restart local v0    # "_arg1":Landroid/app/PendingIntent;
    :goto_11
    invoke-virtual {v8, v1, v0}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v2

    .line 868
    .local v2, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v2, :cond_12

    .line 870
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    invoke-virtual {v2, v11, v13}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 874
    :cond_12
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    :goto_12
    return v13

    .line 818
    .end local v0    # "_arg1":Landroid/app/PendingIntent;
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_result":Landroid/net/NetworkRequest;
    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 821
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_13

    .line 824
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_13
    move-object v1, v0

    .line 827
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 828
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 831
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_14
    move-object v2, v0

    goto :goto_15

    .end local v2    # "_arg1":Landroid/os/Messenger;
    :cond_14
    goto :goto_14

    .line 834
    .restart local v2    # "_arg1":Landroid/os/Messenger;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 836
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 838
    .local v14, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 839
    .local v15, "_arg4":I
    move-object v0, v8

    move v3, v7

    move-object v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v0

    .line 840
    .local v0, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    if-eqz v0, :cond_15

    .line 842
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    invoke-virtual {v0, v11, v13}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    .line 846
    :cond_15
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    :goto_16
    return v13

    .line 773
    .end local v0    # "_result":Landroid/net/NetworkRequest;
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v7    # "_arg2":I
    .end local v14    # "_arg3":Landroid/os/IBinder;
    .end local v15    # "_arg4":I
    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 776
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .local v1, "_arg0":Landroid/os/Messenger;
    goto :goto_17

    .line 779
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_16
    move-object v1, v0

    .line 782
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 783
    sget-object v2, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, "_arg1":Landroid/net/NetworkInfo;
    goto :goto_18

    .line 786
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    :cond_17
    move-object v2, v0

    .line 789
    .restart local v2    # "_arg1":Landroid/net/NetworkInfo;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 790
    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .local v3, "_arg2":Landroid/net/LinkProperties;
    goto :goto_19

    .line 793
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    :cond_18
    move-object v3, v0

    .line 796
    .restart local v3    # "_arg2":Landroid/net/LinkProperties;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 797
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkCapabilities;

    .local v4, "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_1a

    .line 800
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    :cond_19
    move-object v4, v0

    .line 803
    .restart local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 805
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 806
    sget-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkMisc;

    .line 809
    .local v6, "_arg5":Landroid/net/NetworkMisc;
    :goto_1b
    move-object v6, v0

    goto :goto_1c

    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    :cond_1a
    goto :goto_1b

    .line 811
    .restart local v6    # "_arg5":Landroid/net/NetworkMisc;
    :goto_1c
    move-object v0, v8

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v0

    .line 812
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    return v13

    .line 759
    .end local v0    # "_result":I
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    .end local v7    # "_arg4":I
    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 762
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .local v0, "_arg0":Landroid/os/Messenger;
    goto :goto_1d

    .line 765
    .end local v0    # "_arg0":Landroid/os/Messenger;
    :cond_1b
    nop

    .line 767
    .restart local v0    # "_arg0":Landroid/os/Messenger;
    :goto_1d
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    return v13

    .line 744
    .end local v0    # "_arg0":Landroid/os/Messenger;
    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 747
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .local v0, "_arg0":Landroid/net/Network;
    goto :goto_1e

    .line 750
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_1c
    nop

    .line 752
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_1e
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v1

    .line 753
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    return v13

    .line 728
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 731
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .local v0, "_arg0":Landroid/os/Messenger;
    goto :goto_1f

    .line 734
    .end local v0    # "_arg0":Landroid/os/Messenger;
    :cond_1d
    nop

    .line 737
    .restart local v0    # "_arg0":Landroid/os/Messenger;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    return v13

    .line 719
    .end local v0    # "_arg0":Landroid/os/Messenger;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v6, v13

    nop

    :cond_1e
    move v0, v6

    .line 722
    .local v0, "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    return v13

    .line 706
    .end local v0    # "_arg0":Z
    :pswitch_18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    move v6, v13

    nop

    :cond_1f
    move v0, v6

    .line 710
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    return v13

    .line 698
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    return v13

    .line 688
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 691
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v1

    .line 692
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    return v13

    .line 678
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 681
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 684
    return v13

    .line 664
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 668
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    move v6, v13

    nop

    :cond_20
    move v2, v6

    .line 671
    .local v2, "_arg2":Z
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    move-result v3

    .line 672
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    return v13

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_1d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 656
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result v2

    .line 658
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    return v13

    .line 644
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v0

    .line 646
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    return v13

    .line 636
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v0

    .line 638
    .local v0, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 640
    return v13

    .line 620
    .end local v0    # "_result":[Lcom/android/internal/net/VpnInfo;
    :pswitch_20
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 623
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 624
    .local v1, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v1, :cond_21

    .line 626
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    invoke-virtual {v1, v11, v13}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 630
    :cond_21
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    :goto_20
    return v13

    .line 606
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :pswitch_21
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 609
    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .local v0, "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_21

    .line 612
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_22
    nop

    .line 614
    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_21
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    return v13

    .line 590
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :pswitch_22
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 593
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 594
    .local v1, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v1, :cond_23

    .line 596
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    invoke-virtual {v1, v11, v13}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 600
    :cond_23
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    :goto_22
    return v13

    .line 569
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/internal/net/VpnConfig;
    :pswitch_23
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 572
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .local v0, "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_23

    .line 575
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    :cond_24
    nop

    .line 577
    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_23
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 578
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    if-eqz v1, :cond_25

    .line 580
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    invoke-virtual {v1, v11, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_24

    .line 584
    :cond_25
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    :goto_24
    return v13

    .line 556
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_24
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 562
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    move v6, v13

    nop

    :cond_26
    move v2, v6

    .line 563
    .local v2, "_arg2":Z
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    return v13

    .line 542
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_25
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 549
    .local v2, "_arg2":I
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 550
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    return v13

    .line 521
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_26
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    .line 524
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .local v0, "_arg0":Landroid/net/Network;
    goto :goto_25

    .line 527
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_27
    nop

    .line 529
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_25
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 530
    .local v1, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v1, :cond_28

    .line 532
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    invoke-virtual {v1, v11, v13}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 536
    :cond_28
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    :goto_26
    return v13

    .line 507
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":Landroid/net/ProxyInfo;
    :pswitch_27
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    .line 510
    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyInfo;

    .local v0, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_27

    .line 513
    .end local v0    # "_arg0":Landroid/net/ProxyInfo;
    :cond_29
    nop

    .line 515
    .restart local v0    # "_arg0":Landroid/net/ProxyInfo;
    :goto_27
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    return v13

    .line 493
    .end local v0    # "_arg0":Landroid/net/ProxyInfo;
    :pswitch_28
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 495
    .local v0, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v0, :cond_2a

    .line 497
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    invoke-virtual {v0, v11, v13}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    .line 501
    :cond_2a
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    :goto_28
    return v13

    .line 477
    .end local v0    # "_result":Landroid/net/ProxyInfo;
    :pswitch_29
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 480
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .local v0, "_arg0":Landroid/net/Network;
    goto :goto_29

    .line 483
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_2b
    nop

    .line 486
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    move v6, v13

    nop

    :cond_2c
    move v1, v6

    .line 487
    .local v1, "_arg1":Z
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    return v13

    .line 466
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_arg1":Z
    :pswitch_2a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    return v13

    .line 454
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    move v6, v13

    nop

    :cond_2d
    move v0, v6

    .line 458
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(ZLjava/lang/String;)I

    move-result v2

    .line 460
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    return v13

    .line 446
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 450
    return v13

    .line 438
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 440
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 442
    return v13

    .line 430
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 432
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 434
    return v13

    .line 422
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0

    .line 424
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 426
    return v13

    .line 414
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_30
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 416
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 418
    return v13

    .line 406
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_31
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 408
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 410
    return v13

    .line 398
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 400
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 402
    return v13

    .line 387
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_33
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 391
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopTethering(ILjava/lang/String;)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    return v13

    .line 367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 372
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .local v0, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_2a

    .line 375
    .end local v0    # "_arg1":Landroid/os/ResultReceiver;
    :cond_2e
    nop

    .line 378
    .restart local v0    # "_arg1":Landroid/os/ResultReceiver;
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    move v6, v13

    nop

    :cond_2f
    move v2, v6

    .line 380
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v8, v1, v0, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    return v13

    .line 357
    .end local v0    # "_arg1":Landroid/os/ResultReceiver;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_35
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported(Ljava/lang/String;)Z

    move-result v1

    .line 361
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    return v13

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_36
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v1

    .line 351
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    return v13

    .line 335
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_37
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 341
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    return v13

    .line 323
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_38
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 329
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    return v13

    .line 311
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_39
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 316
    .local v1, "_arg1":[B
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v2

    .line 317
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return v13

    .line 303
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :pswitch_3a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v0

    .line 305
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v13

    .line 289
    .end local v0    # "_result":Z
    :pswitch_3b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v0

    .line 291
    .local v0, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v0, :cond_30

    .line 293
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v0, v11, v13}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2b

    .line 297
    :cond_30
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    :goto_2b
    return v13

    .line 281
    .end local v0    # "_result":Landroid/net/NetworkQuotaInfo;
    :pswitch_3c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v0

    .line 283
    .local v0, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 285
    return v13

    .line 260
    .end local v0    # "_result":[Landroid/net/NetworkState;
    :pswitch_3d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    .line 263
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .local v0, "_arg0":Landroid/net/Network;
    goto :goto_2c

    .line 266
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_31
    nop

    .line 268
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_2c
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 269
    .local v1, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v1, :cond_32

    .line 271
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v1, v11, v13}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 275
    :cond_32
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    :goto_2d
    return v13

    .line 239
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":Landroid/net/NetworkCapabilities;
    :pswitch_3e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    .line 242
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .restart local v0    # "_arg0":Landroid/net/Network;
    goto :goto_2e

    .line 245
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_33
    nop

    .line 247
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_2e
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 248
    .local v1, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v1, :cond_34

    .line 250
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {v1, v11, v13}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    .line 254
    :cond_34
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    :goto_2f
    return v13

    .line 223
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":Landroid/net/LinkProperties;
    :pswitch_3f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 227
    .restart local v1    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v1, :cond_35

    .line 229
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v1, v11, v13}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    .line 233
    :cond_35
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    :goto_30
    return v13

    .line 209
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/net/LinkProperties;
    :pswitch_40
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 211
    .local v0, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v0, :cond_36

    .line 213
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v0, v11, v13}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    .line 217
    :cond_36
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    :goto_31
    return v13

    .line 199
    .end local v0    # "_result":Landroid/net/LinkProperties;
    :pswitch_41
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v1

    .line 203
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    return v13

    .line 189
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_42
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 193
    .local v1, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 195
    return v13

    .line 181
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/net/NetworkCapabilities;
    :pswitch_43
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 183
    .local v0, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 185
    return v13

    .line 165
    .end local v0    # "_result":[Landroid/net/Network;
    :pswitch_44
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    .line 169
    .local v1, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v1, :cond_37

    .line 171
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v1, v11, v13}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    .line 175
    :cond_37
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    :goto_32
    return v13

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/net/Network;
    :pswitch_45
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 159
    .local v0, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 161
    return v13

    .line 132
    .end local v0    # "_result":[Landroid/net/NetworkInfo;
    :pswitch_46
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    .line 135
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .local v0, "_arg0":Landroid/net/Network;
    goto :goto_33

    .line 138
    .end local v0    # "_arg0":Landroid/net/Network;
    :cond_38
    nop

    .line 141
    .restart local v0    # "_arg0":Landroid/net/Network;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    move v2, v13

    goto :goto_34

    :cond_39
    move v2, v6

    .line 144
    .local v2, "_arg2":Z
    :goto_34
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 145
    .local v3, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v3, :cond_3a

    .line 147
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {v3, v11, v13}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    .line 151
    :cond_3a
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    :goto_35
    return v13

    .line 116
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Landroid/net/NetworkInfo;
    :pswitch_47
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 120
    .local v1, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_3b

    .line 122
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v1, v11, v13}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_36

    .line 126
    :cond_3b
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    :goto_36
    return v13

    .line 98
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/net/NetworkInfo;
    :pswitch_48
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v13

    goto :goto_37

    :cond_3c
    move v1, v6

    .line 103
    .local v1, "_arg1":Z
    :goto_37
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 104
    .local v2, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_3d

    .line 106
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v2, v11, v13}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_38

    .line 110
    :cond_3d
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_38
    return v13

    .line 84
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Landroid/net/NetworkInfo;
    :pswitch_49
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 86
    .local v0, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v0, :cond_3e

    .line 88
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v0, v11, v13}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_39

    .line 92
    :cond_3e
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_39
    return v13

    .line 66
    .end local v0    # "_result":Landroid/net/NetworkInfo;
    :pswitch_4a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    move v1, v13

    goto :goto_3a

    :cond_3f
    move v1, v6

    .line 71
    .restart local v1    # "_arg1":Z
    :goto_3a
    invoke-virtual {v8, v0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v2

    .line 72
    .local v2, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_40

    .line 74
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v2, v11, v13}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3b

    .line 78
    :cond_40
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    :goto_3b
    return v13

    .line 52
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Landroid/net/Network;
    :pswitch_4b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 54
    .local v0, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v0, :cond_41

    .line 56
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v0, v11, v13}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3c

    .line 60
    :cond_41
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    :goto_3c
    return v13

    .line 47
    .end local v0    # "_result":Landroid/net/Network;
    :cond_42
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v13

    :pswitch_data_0
    .packed-switch 0x1
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
