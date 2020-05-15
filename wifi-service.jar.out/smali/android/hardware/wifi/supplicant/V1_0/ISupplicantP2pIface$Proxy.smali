.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 922
    return-void
.end method


# virtual methods
.method public addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1763
    .local p1, "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1764
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1766
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1768
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1770
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1771
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1774
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1775
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    nop

    .line 1778
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1776
    return-object v2

    .line 1778
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "persistent"    # Z
    .param p2, "persistentNetworkId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1497
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1498
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1500
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1502
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1504
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1505
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1508
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1509
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    nop

    .line 1512
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1510
    return-object v2

    .line 1512
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 995
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 996
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 998
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1000
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1001
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1004
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1005
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1006
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    move-result-object v3

    .line 1007
    .local v3, "_hidl_out_network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1010
    nop

    .line 1011
    return-void

    .line 1009
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "version"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1807
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1809
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1811
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1813
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1814
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1815
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1817
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1818
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1819
    nop

    .line 1821
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1819
    return-object v2

    .line 1821
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 926
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1447
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1448
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1452
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1453
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1456
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1457
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    nop

    .line 1460
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1458
    return-object v2

    .line 1460
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "identifier"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1901
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1902
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1905
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1907
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1908
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1909
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1911
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1912
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    nop

    .line 1915
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1913
    return-object v2

    .line 1915
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2026
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2027
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2028
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2030
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2032
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2033
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2036
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2037
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2038
    nop

    .line 2040
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2038
    return-object v2

    .line 2040
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "periodInMillis"    # I
    .param p2, "intervalInMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1639
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1641
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1645
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1646
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1647
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1649
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1650
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    nop

    .line 1653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1651
    return-object v2

    .line 1653
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V
    .locals 5
    .param p1, "peerAddress"    # [B
    .param p2, "provisionMethod"    # I
    .param p3, "preSelectedPin"    # Ljava/lang/String;
    .param p4, "joinExistingGroup"    # Z
    .param p5, "persistent"    # Z
    .param p6, "goIntent"    # I
    .param p7, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1412
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1413
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1415
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1417
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1418
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1419
    nop

    .line 1421
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1423
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1424
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1426
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1427
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1429
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1431
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1432
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1435
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1436
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1437
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1438
    .local v3, "_hidl_out_generatedPin":Ljava/lang/String;
    invoke-interface {p7, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_generatedPin":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1441
    nop

    .line 1442
    return-void

    .line 1440
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2097
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2098
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2100
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2102
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2103
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2104
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2106
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2107
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2108
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2109
    .local v3, "_hidl_out_request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2112
    nop

    .line 2113
    return-void

    .line 2111
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2118
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2119
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2121
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2123
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2124
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2125
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2127
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2128
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2129
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2130
    .local v3, "_hidl_out_select":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2132
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_select":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2133
    nop

    .line 2134
    return-void

    .line 2132
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2047
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2048
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2051
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2053
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2054
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2055
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2057
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2058
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    nop

    .line 2061
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2059
    return-object v2

    .line 2061
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 941
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "timeoutInSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1351
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1352
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1355
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1357
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1358
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1359
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1361
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1362
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    nop

    .line 1365
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1363
    return-object v2

    .line 1365
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1392
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1393
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1395
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1397
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1398
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1399
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1401
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1402
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    nop

    .line 1405
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1403
    return-object v2

    .line 1405
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1850
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1851
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1853
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1855
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1856
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1857
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1859
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1860
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1861
    nop

    .line 1863
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1861
    return-object v2

    .line 1863
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2316
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2318
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2320
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2321
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2322
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2324
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2325
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2326
    nop

    .line 2328
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2326
    return-object v2

    .line 2328
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V
    .locals 8
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1258
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1260
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1262
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1263
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1266
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1267
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1268
    const/4 v3, 0x6

    new-array v4, v3, [B

    .line 1270
    .local v4, "_hidl_out_deviceAddress":[B
    const-wide/16 v5, 0x6

    invoke-virtual {v1, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 1272
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1273
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1274
    nop

    .line 1277
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-interface {p1, v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v4    # "_hidl_out_deviceAddress":[B
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1280
    nop

    .line 1281
    return-void

    .line 1279
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V
    .locals 5
    .param p1, "peerAddress"    # [B
    .param p2, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1734
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1738
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1739
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1740
    nop

    .line 1742
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1745
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1747
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1748
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1749
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1751
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1752
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1753
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1754
    .local v3, "_hidl_out_capabilities":I
    invoke-interface {p2, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_capabilities":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1757
    nop

    .line 1758
    return-void

    .line 1756
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2240
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2241
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2243
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2245
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2246
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 2251
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 2253
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 2254
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 2255
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 2254
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 2258
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2259
    nop

    .local v10, "_hidl_index_0":I
    :goto_0
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_0

    .line 2260
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 2262
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 2263
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2264
    nop

    .line 2266
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2259
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_0

    .line 2270
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_0
    nop

    .line 2272
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2270
    return-object v11

    .line 2272
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 954
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 958
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 959
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 962
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 963
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 964
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, "_hidl_out_name":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 968
    nop

    .line 969
    return-void

    .line 967
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1038
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1041
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1043
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1044
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1045
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1047
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1048
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1049
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    move-result-object v3

    .line 1050
    .local v3, "_hidl_out_network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;
    invoke-interface {p2, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_network":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1053
    nop

    .line 1054
    return-void

    .line 1052
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V
    .locals 5
    .param p1, "peerAddress"    # [B
    .param p2, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1703
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1704
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1706
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1708
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1709
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1710
    nop

    .line 1712
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1715
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1717
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1718
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1719
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1721
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1722
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1723
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1724
    .local v3, "_hidl_out_ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p2, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1727
    nop

    .line 1728
    return-void

    .line 1726
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 975
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 977
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 979
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 980
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 981
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 983
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 984
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 985
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 986
    .local v3, "_hidl_out_type":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_type":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 989
    nop

    .line 990
    return-void

    .line 988
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .locals 1

    .line 946
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2202
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2203
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2205
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2207
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2208
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2211
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 2214
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2212
    return-object v2

    .line 2214
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2222
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2224
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2226
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2227
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2230
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 2233
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2231
    return-object v2

    .line 2233
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "goDeviceAddress"    # [B
    .param p3, "peerAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1570
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1573
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1575
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1576
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v1, v3, v4, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1577
    nop

    .line 1579
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1582
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwBlob;

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1584
    .restart local v1    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1585
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1586
    nop

    .line 1588
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1591
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1593
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1594
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1595
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1597
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1598
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    nop

    .line 1601
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1599
    return-object v2

    .line 1601
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2294
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1060
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1064
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1065
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1066
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1068
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1069
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1070
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1071
    .local v3, "_hidl_out_networkIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_networkIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1074
    nop

    .line 1075
    return-void

    .line 1073
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2335
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2336
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2338
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2340
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2341
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2344
    nop

    .line 2345
    return-void

    .line 2343
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2300
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2302
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2304
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2305
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2306
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2309
    nop

    .line 2310
    return-void

    .line 2308
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "peerAddress"    # [B
    .param p2, "provisionMethod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1468
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1470
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1472
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1473
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1474
    nop

    .line 1476
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1478
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1480
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1482
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1483
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1486
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1487
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    nop

    .line 1490
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1488
    return-object v2

    .line 1490
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "callback"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1237
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1238
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1240
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1242
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1243
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1246
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1247
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    nop

    .line 1250
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1248
    return-object v2

    .line 1250
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "persistentNetworkId"    # I
    .param p2, "peerAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1608
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1609
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1612
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1614
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1615
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1616
    nop

    .line 1618
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1621
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1623
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1624
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1625
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1627
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1628
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    nop

    .line 1631
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1629
    return-object v2

    .line 1631
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "peerAddress"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1541
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1543
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1545
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1546
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1547
    nop

    .line 1549
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1552
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1554
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1555
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1556
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1558
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1559
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    nop

    .line 1562
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1560
    return-object v2

    .line 1562
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1785
    .local p1, "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1786
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1789
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1791
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1792
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1795
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1796
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    nop

    .line 1799
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1797
    return-object v2

    .line 1799
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1520
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1523
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1525
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1526
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1527
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1529
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1530
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    nop

    .line 1533
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1531
    return-object v2

    .line 1533
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1017
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1020
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1022
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1023
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1026
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1027
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    nop

    .line 1030
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1028
    return-object v2

    .line 1030
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "version"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1828
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1829
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1831
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1833
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1835
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1836
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1837
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1839
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1840
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    nop

    .line 1843
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1841
    return-object v2

    .line 1843
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2160
    .local p1, "select":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2161
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2164
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2166
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2167
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2170
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2171
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    nop

    .line 2174
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2172
    return-object v2

    .line 2174
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2139
    .local p1, "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2140
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2143
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2145
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2146
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2147
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2149
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2150
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    nop

    .line 2153
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2151
    return-object v2

    .line 2153
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V
    .locals 5
    .param p1, "peerAddress"    # [B
    .param p3, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1870
    .local p2, "query":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1871
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1873
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1875
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1876
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1877
    nop

    .line 1879
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1881
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1883
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1885
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1886
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1887
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1889
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1890
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1891
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1892
    .local v3, "_hidl_out_identifier":J
    invoke-interface {p3, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_identifier":J
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1895
    nop

    .line 1896
    return-void

    .line 1894
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2181
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2182
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2184
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2186
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2187
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2188
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2190
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2191
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    nop

    .line 2194
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2192
    return-object v2

    .line 2194
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1682
    .local p1, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1683
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1684
    invoke-static {v0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1686
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1688
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1689
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1690
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1692
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1693
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    nop

    .line 1696
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1694
    return-object v2

    .line 1696
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "timeoutInSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1307
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1308
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1312
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1314
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1315
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1316
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1318
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1319
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    nop

    .line 1322
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1320
    return-object v2

    .line 1322
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2280
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2282
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2284
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2285
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2288
    nop

    .line 2289
    return-void

    .line 2287
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "channel"    # I
    .param p2, "operatingClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1660
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1661
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1663
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1665
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1667
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1668
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1669
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1671
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1672
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1673
    nop

    .line 1675
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1673
    return-object v2

    .line 1675
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "mode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1922
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1923
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 1926
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1928
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1929
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1932
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1933
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    nop

    .line 1936
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1934
    return-object v2

    .line 1936
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1329
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1330
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1334
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1336
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1337
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1340
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1341
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    nop

    .line 1344
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1342
    return-object v2

    .line 1344
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1286
    .local p1, "postfix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1287
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1290
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1292
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1293
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1294
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1296
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1297
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    nop

    .line 1300
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1298
    return-object v2

    .line 1300
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "info"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2069
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2071
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2073
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 2074
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2075
    nop

    .line 2077
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2080
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2082
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2083
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2084
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2086
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2087
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    nop

    .line 2090
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2088
    return-object v2

    .line 2090
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "configMethods"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1215
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 1218
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1220
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1221
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1222
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1224
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1225
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    nop

    .line 1228
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1226
    return-object v2

    .line 1228
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1081
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1084
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1086
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1087
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1088
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1090
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1091
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    nop

    .line 1094
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1092
    return-object v2

    .line 1094
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "type"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1102
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1104
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1106
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 1107
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v1, v3, v4, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1108
    nop

    .line 1110
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1113
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1115
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1116
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1117
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1119
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1120
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    nop

    .line 1123
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1121
    return-object v2

    .line 1123
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "manufacturer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1131
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1134
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1136
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1137
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1140
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1141
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    nop

    .line 1144
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1142
    return-object v2

    .line 1144
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "modelName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1151
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1152
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1155
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1157
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1158
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1159
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1161
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1162
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    nop

    .line 1165
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1163
    return-object v2

    .line 1165
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "modelNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1173
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1176
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1178
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1179
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1182
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1183
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    nop

    .line 1186
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1184
    return-object v2

    .line 1186
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "serialNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1193
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1194
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1197
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1199
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1200
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1201
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1203
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1204
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    nop

    .line 1207
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1205
    return-object v2

    .line 1207
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1943
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1944
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1947
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1949
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 1950
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1951
    nop

    .line 1953
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1956
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1958
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1959
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1962
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1963
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    nop

    .line 1966
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1964
    return-object v2

    .line 1966
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "bssid"    # [B
    .param p3, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1995
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1996
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1999
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2001
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 2002
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2003
    nop

    .line 2005
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2008
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2010
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2011
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2012
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2014
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2015
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2016
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2017
    .local v3, "_hidl_out_generatedPin":Ljava/lang/String;
    invoke-interface {p3, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_generatedPin":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2020
    nop

    .line 2021
    return-void

    .line 2019
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1973
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1974
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1978
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1980
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1981
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1982
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1984
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1985
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    nop

    .line 1988
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1986
    return-object v2

    .line 1988
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1372
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1373
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1375
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1377
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1378
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1379
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1381
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1382
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    nop

    .line 1385
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1383
    return-object v2

    .line 1385
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 932
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 933
    :catch_0
    move-exception v0

    .line 936
    const-string v0, "[class or subclass of android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2350
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
