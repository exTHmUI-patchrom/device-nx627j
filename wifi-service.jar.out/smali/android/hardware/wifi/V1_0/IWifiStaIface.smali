.class public interface abstract Landroid/hardware/wifi/V1_0/IWifiStaIface;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiIface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/wifi/V1_0/IWifiStaIface$Stub;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiStaIface$StaIfaceCapabilityMask;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.wifi@1.0::IWifiStaIface"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 6
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 11
    :cond_0
    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    .local v1, "iface":Landroid/os/IHwInterface;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-eqz v2, :cond_1

    .line 15
    move-object v0, v1

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiStaIface;

    return-object v0

    .line 18
    :cond_1
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v2, "proxy":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    .local v4, "descriptor":Ljava/lang/String;
    const-string v5, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 23
    return-object v2

    .line 25
    .end local v4    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 27
    :cond_3
    goto :goto_1

    .line 26
    :catch_0
    move-exception v3

    .line 29
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 33
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getService(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getService(Ljava/lang/String;Z)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disableLinkLayerStatsCollection()Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
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
.end method

.method public abstract getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
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
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;S[B[BI)",
            "Landroid/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
