.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x26

.field static final TRANSACTION_acquireWifiLock:I = 0x21

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x9

.field static final TRANSACTION_addOrUpdateNetwork2:I = 0x53

.field static final TRANSACTION_addOrUpdatePasspointConfiguration:I = 0xa

.field static final TRANSACTION_deauthenticateNetwork:I = 0xf

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x3a

.field static final TRANSACTION_disableNetwork:I = 0x12

.field static final TRANSACTION_disconnect:I = 0x15

.field static final TRANSACTION_dppAddBootstrapQrCode:I = 0x44

.field static final TRANSACTION_dppBootstrapGenerate:I = 0x45

.field static final TRANSACTION_dppBootstrapRemove:I = 0x47

.field static final TRANSACTION_dppConfiguratorAdd:I = 0x4a

.field static final TRANSACTION_dppConfiguratorGetKey:I = 0x4d

.field static final TRANSACTION_dppConfiguratorRemove:I = 0x4b

.field static final TRANSACTION_dppGetUri:I = 0x46

.field static final TRANSACTION_dppListen:I = 0x48

.field static final TRANSACTION_dppStartAuth:I = 0x4c

.field static final TRANSACTION_dppStopListen:I = 0x49

.field static final TRANSACTION_enableNetwork:I = 0x11

.field static final TRANSACTION_enableTdls:I = 0x34

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x35

.field static final TRANSACTION_enableVerboseLogging:I = 0x37

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x39

.field static final TRANSACTION_enableWifiCoverageExtendFeature:I = 0x50

.field static final TRANSACTION_factoryReset:I = 0x3b

.field static final TRANSACTION_getAllMatchingWifiConfigs:I = 0x7

.field static final TRANSACTION_getCapabilities:I = 0x43

.field static final TRANSACTION_getConfigInformation:I = 0x52

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x18

.field static final TRANSACTION_getCountryCode:I = 0x1c

.field static final TRANSACTION_getCurrentNetwork:I = 0x3c

.field static final TRANSACTION_getCurrentNetworkWpsNfcConfigurationToken:I = 0x36

.field static final TRANSACTION_getDhcpInfo:I = 0x1f

.field static final TRANSACTION_getMatchingOsuProviders:I = 0x8

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getPasspointConfigurations:I = 0xc

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x14

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x38

.field static final TRANSACTION_getWifiApConfiguration:I = 0x30

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2f

.field static final TRANSACTION_getWifiEnabledState:I = 0x1a

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x33

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x24

.field static final TRANSACTION_isDualBandSupported:I = 0x1d

.field static final TRANSACTION_isExtendingWifi:I = 0x4e

.field static final TRANSACTION_isMulticastEnabled:I = 0x25

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x20

.field static final TRANSACTION_isWifiCoverageExtendFeatureEnabled:I = 0x4f

.field static final TRANSACTION_isWifiToggleEnabled:I = 0x54

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xe

.field static final TRANSACTION_needs5GHzToAnyApBandConversion:I = 0x1e

.field static final TRANSACTION_notifyUserOfApBandConversion:I = 0x32

.field static final TRANSACTION_queryPasspointIcon:I = 0xd

.field static final TRANSACTION_reassociate:I = 0x17

.field static final TRANSACTION_reconnect:I = 0x16

.field static final TRANSACTION_registerSoftApCallback:I = 0x41

.field static final TRANSACTION_releaseMulticastLock:I = 0x27

.field static final TRANSACTION_releaseWifiLock:I = 0x23

.field static final TRANSACTION_removeNetwork:I = 0x10

.field static final TRANSACTION_removePasspointConfiguration:I = 0xb

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_restoreBackupData:I = 0x3e

.field static final TRANSACTION_restoreSupplicantBackupData:I = 0x3f

.field static final TRANSACTION_retrieveBackupData:I = 0x3d

.field static final TRANSACTION_setCountryCode:I = 0x1b

.field static final TRANSACTION_setLatencyLevel:I = 0x51

.field static final TRANSACTION_setWifiApConfiguration:I = 0x31

.field static final TRANSACTION_setWifiEnabled:I = 0x19

.field static final TRANSACTION_startLocalOnlyHotspot:I = 0x2b

.field static final TRANSACTION_startScan:I = 0x13

.field static final TRANSACTION_startSoftAp:I = 0x29

.field static final TRANSACTION_startSubscriptionProvisioning:I = 0x40

.field static final TRANSACTION_startWatchLocalOnlyHotspot:I = 0x2d

.field static final TRANSACTION_stopLocalOnlyHotspot:I = 0x2c

.field static final TRANSACTION_stopSoftAp:I = 0x2a

.field static final TRANSACTION_stopWatchLocalOnlyHotspot:I = 0x2e

.field static final TRANSACTION_unregisterSoftApCallback:I = 0x42

.field static final TRANSACTION_updateInterfaceIpState:I = 0x28

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWifiManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const-string v0, "android.net.wifi.IWifiManager"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_22

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1009
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1001
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiToggleEnabled()Z

    move-result v1

    .line 1003
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    return v2

    .line 984
    .end local v1    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 990
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    nop

    .line 993
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 994
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork2(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v4

    .line 995
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    return v2

    .line 976
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigInformation()Ljava/util/List;

    move-result-object v1

    .line 978
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 980
    return v2

    .line 964
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 968
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 969
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->setLatencyLevel(ILjava/lang/String;)I

    move-result v4

    .line 970
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    return v2

    .line 955
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    nop

    :cond_1
    move v1, v3

    .line 958
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiCoverageExtendFeature(Z)V

    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    return v2

    .line 947
    .end local v1    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiCoverageExtendFeatureEnabled()Z

    move-result v1

    .line 949
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    return v2

    .line 939
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isExtendingWifi()Z

    move-result v1

    .line 941
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    return v2

    .line 929
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 932
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->dppConfiguratorGetKey(I)Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    return v2

    .line 914
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 917
    sget-object v1, Landroid/net/wifi/WifiDppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDppConfig;

    .local v1, "_arg0":Landroid/net/wifi/WifiDppConfig;
    goto :goto_1

    .line 920
    .end local v1    # "_arg0":Landroid/net/wifi/WifiDppConfig;
    :cond_2
    nop

    .line 922
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiDppConfig;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->dppStartAuth(Landroid/net/wifi/WifiDppConfig;)I

    move-result v3

    .line 923
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    return v2

    .line 904
    .end local v1    # "_arg0":Landroid/net/wifi/WifiDppConfig;
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 907
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->dppConfiguratorRemove(I)I

    move-result v3

    .line 908
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    return v2

    .line 890
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 897
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 898
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    return v2

    .line 883
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->dppStopListen()V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    return v2

    .line 867
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 873
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    .line 875
    .local v5, "_arg2":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v3, v2

    nop

    .line 876
    .local v3, "_arg3":Z
    :cond_4
    invoke-virtual {p0, v1, v4, v5, v3}, Landroid/net/wifi/IWifiManager$Stub;->dppListen(Ljava/lang/String;IZZ)I

    move-result v6

    .line 877
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    return v2

    .line 857
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Z
    .end local v6    # "_result":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 860
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->dppBootstrapRemove(I)I

    move-result v3

    .line 861
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    return v2

    .line 847
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 850
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->dppGetUri(I)Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 853
    return v2

    .line 832
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 835
    sget-object v1, Landroid/net/wifi/WifiDppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDppConfig;

    .local v1, "_arg0":Landroid/net/wifi/WifiDppConfig;
    goto :goto_3

    .line 838
    .end local v1    # "_arg0":Landroid/net/wifi/WifiDppConfig;
    :cond_5
    nop

    .line 840
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiDppConfig;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->dppBootstrapGenerate(Landroid/net/wifi/WifiDppConfig;)I

    move-result v3

    .line 841
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    return v2

    .line 822
    .end local v1    # "_arg0":Landroid/net/wifi/WifiDppConfig;
    .end local v3    # "_result":I
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->dppAddBootstrapQrCode(Ljava/lang/String;)I

    move-result v3

    .line 826
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    return v2

    .line 812
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 815
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    return v2

    .line 803
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 806
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterSoftApCallback(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    return v2

    .line 790
    .end local v1    # "_arg0":I
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 794
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/ISoftApCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISoftApCallback;

    move-result-object v3

    .line 796
    .local v3, "_arg1":Landroid/net/wifi/ISoftApCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 797
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->registerSoftApCallback(Landroid/os/IBinder;Landroid/net/wifi/ISoftApCallback;I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    return v2

    .line 774
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/net/wifi/ISoftApCallback;
    .end local v4    # "_arg2":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 777
    sget-object v1, Landroid/net/wifi/hotspot2/OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/OsuProvider;

    .local v1, "_arg0":Landroid/net/wifi/hotspot2/OsuProvider;
    goto :goto_4

    .line 780
    .end local v1    # "_arg0":Landroid/net/wifi/hotspot2/OsuProvider;
    :cond_6
    nop

    .line 783
    .restart local v1    # "_arg0":Landroid/net/wifi/hotspot2/OsuProvider;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/hotspot2/IProvisioningCallback;

    move-result-object v3

    .line 784
    .local v3, "_arg1":Landroid/net/wifi/hotspot2/IProvisioningCallback;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V

    .line 785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    return v2

    .line 763
    .end local v1    # "_arg0":Landroid/net/wifi/hotspot2/OsuProvider;
    .end local v3    # "_arg1":Landroid/net/wifi/hotspot2/IProvisioningCallback;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 767
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 768
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->restoreSupplicantBackupData([B[B)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    return v2

    .line 754
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":[B
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 757
    .restart local v1    # "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->restoreBackupData([B)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    return v2

    .line 746
    .end local v1    # "_arg0":[B
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->retrieveBackupData()[B

    move-result-object v1

    .line 748
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 750
    return v2

    .line 732
    .end local v1    # "_result":[B
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    .line 734
    .local v1, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    if-eqz v1, :cond_7

    .line 736
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    invoke-virtual {v1, p3, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 740
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    :goto_5
    return v2

    .line 723
    .end local v1    # "_result":Landroid/net/Network;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    return v2

    .line 712
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    return v2

    .line 703
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v3, v2

    nop

    :cond_8
    move v1, v3

    .line 706
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    return v2

    .line 695
    .end local v1    # "_arg0":Z
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v1

    .line 697
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    return v2

    .line 686
    .end local v1    # "_result":I
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    return v2

    .line 678
    .end local v1    # "_arg0":I
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    return v2

    .line 667
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v3, v2

    nop

    .line 672
    .local v3, "_arg1":Z
    :cond_9
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    return v2

    .line 656
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    move v3, v2

    nop

    .line 661
    .restart local v3    # "_arg1":Z
    :cond_a
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    return v2

    .line 640
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 643
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger(Ljava/lang/String;)Landroid/os/Messenger;

    move-result-object v4

    .line 644
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v4, :cond_b

    .line 646
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    invoke-virtual {v4, p3, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 650
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    :goto_6
    return v2

    .line 631
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Messenger;
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 634
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->notifyUserOfApBandConversion(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    return v2

    .line 614
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 617
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_7

    .line 620
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    nop

    .line 623
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v4

    .line 625
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    return v2

    .line 600
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 602
    .local v1, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v1, :cond_d

    .line 604
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    invoke-virtual {v1, p3, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 608
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    :goto_8
    return v2

    .line 592
    .end local v1    # "_result":Landroid/net/wifi/WifiConfiguration;
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v1

    .line 594
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    return v2

    .line 585
    .end local v1    # "_result":I
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWatchLocalOnlyHotspot()V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    return v2

    .line 569
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 572
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .local v1, "_arg0":Landroid/os/Messenger;
    goto :goto_9

    .line 575
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_e
    nop

    .line 578
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 579
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    return v2

    .line 562
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopLocalOnlyHotspot()V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    return v2

    .line 543
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 546
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_a

    .line 549
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_f
    nop

    .line 552
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 554
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v5

    .line 556
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    return v2

    .line 535
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopSoftAp()Z

    move-result v1

    .line 537
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    return v2

    .line 520
    .end local v1    # "_result":Z
    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 523
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .line 526
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_10
    nop

    .line 528
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 529
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    return v2

    .line 509
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "_result":Z
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    return v2

    .line 502
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    return v2

    .line 491
    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 495
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    return v2

    .line 483
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v1

    .line 485
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    return v2

    .line 476
    .end local v1    # "_result":Z
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    return v2

    .line 466
    :pswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 469
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v3

    .line 470
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    return v2

    .line 450
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 454
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 455
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .local v1, "_arg1":Landroid/os/WorkSource;
    goto :goto_c

    .line 458
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_11
    nop

    .line 460
    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    :goto_c
    invoke-virtual {p0, v3, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    return v2

    .line 429
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 433
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 438
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .local v1, "_arg3":Landroid/os/WorkSource;
    goto :goto_d

    .line 441
    .end local v1    # "_arg3":Landroid/os/WorkSource;
    :cond_12
    nop

    .line 443
    .restart local v1    # "_arg3":Landroid/os/WorkSource;
    :goto_d
    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v6

    .line 444
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    return v2

    .line 421
    .end local v1    # "_arg3":Landroid/os/WorkSource;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v1

    .line 423
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    return v2

    .line 407
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 409
    .local v1, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v1, :cond_13

    .line 411
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    invoke-virtual {v1, p3, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 415
    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    :goto_e
    return v2

    .line 399
    .end local v1    # "_result":Landroid/net/DhcpInfo;
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->needs5GHzToAnyApBandConversion()Z

    move-result v1

    .line 401
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return v2

    .line 391
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v1

    .line 393
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    return v2

    .line 383
    .end local v1    # "_result":Z
    :pswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    return v2

    .line 374
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    return v2

    .line 366
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v1

    .line 368
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return v2

    .line 354
    .end local v1    # "_result":I
    :pswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    move v3, v2

    nop

    .line 359
    .local v3, "_arg1":Z
    :cond_14
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v4

    .line 360
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    return v2

    .line 338
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 342
    .local v4, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v4, :cond_15

    .line 344
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {v4, p3, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 348
    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    :goto_f
    return v2

    .line 329
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/wifi/WifiInfo;
    :pswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->reassociate(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    return v2

    .line 320
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->reconnect(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    return v2

    .line 311
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->disconnect(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    return v2

    .line 301
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 305
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 307
    return v2

    .line 291
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Ljava/lang/String;)Z

    move-result v3

    .line 295
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    return v2

    .line 279
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(ILjava/lang/String;)Z

    move-result v4

    .line 285
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    return v2

    .line 265
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    move v3, v2

    nop

    .line 271
    .local v3, "_arg1":Z
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZLjava/lang/String;)Z

    move-result v5

    .line 273
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return v2

    .line 253
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(ILjava/lang/String;)Z

    move-result v4

    .line 259
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return v2

    .line 242
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 246
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    move v3, v2

    nop

    :cond_17
    move v1, v3

    .line 247
    .local v1, "_arg1":Z
    invoke-virtual {p0, v4, v5, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    return v2

    .line 232
    .end local v1    # "_arg1":Z
    .end local v4    # "_arg0":J
    :pswitch_46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v3

    .line 236
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    return v2

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 225
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    return v2

    .line 213
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg0":J
    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 217
    return v2

    .line 201
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    :pswitch_49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 207
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v2

    .line 184
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_4a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 187
    sget-object v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .local v1, "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    goto :goto_10

    .line 190
    .end local v1    # "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :cond_18
    nop

    .line 193
    .restart local v1    # "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z

    move-result v4

    .line 195
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v2

    .line 167
    .end local v1    # "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 170
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_11

    .line 173
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_19
    nop

    .line 176
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v4

    .line 178
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v2

    .line 152
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 155
    sget-object v1, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .local v1, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_12

    .line 158
    .end local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    :cond_1a
    nop

    .line 160
    .restart local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    :goto_12
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v3

    .line 161
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 163
    return v2

    .line 137
    .end local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    :pswitch_4d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 140
    sget-object v1, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .restart local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_13

    .line 143
    .end local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    :cond_1b
    nop

    .line 145
    .restart local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    :goto_13
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getAllMatchingWifiConfigs(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v3

    .line 146
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 148
    return v2

    .line 116
    .end local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :pswitch_4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 119
    sget-object v1, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .restart local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_14

    .line 122
    .end local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    :cond_1c
    nop

    .line 124
    .restart local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    :goto_14
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 125
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v4, :cond_1d

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v4, p3, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    .line 131
    :cond_1d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    :goto_15
    return v2

    .line 102
    .end local v1    # "_arg0":Landroid/net/wifi/ScanResult;
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :pswitch_4f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 104
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v1, :cond_1e

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    .line 110
    :cond_1e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_16
    return v2

    .line 88
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 90
    .restart local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v1, :cond_1f

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v1, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 96
    :cond_1f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_17
    return v2

    .line 75
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 78
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .local v1, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_18

    .line 81
    .end local v1    # "_arg0":Landroid/os/ResultReceiver;
    :cond_20
    nop

    .line 83
    .restart local v1    # "_arg0":Landroid/os/ResultReceiver;
    :goto_18
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 84
    return v2

    .line 61
    .end local v1    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v1

    .line 63
    .local v1, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_21

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v1, p3, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 69
    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    :goto_19
    return v2

    .line 53
    .end local v1    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :pswitch_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v1

    .line 55
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v2

    .line 48
    .end local v1    # "_result":I
    :cond_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
