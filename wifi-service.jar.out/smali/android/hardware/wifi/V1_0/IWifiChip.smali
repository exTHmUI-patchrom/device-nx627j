.class public interface abstract Landroid/hardware/wifi/V1_0/IWifiChip;
.super Ljava/lang/Object;
.source "IWifiChip.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/wifi/V1_0/IWifiChip$Stub;,
        Landroid/hardware/wifi/V1_0/IWifiChip$Proxy;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;,
        Landroid/hardware/wifi/V1_0/IWifiChip$ChipCapabilityMask;,
        Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;,
        Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;,
        Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;,
        Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.wifi@1.0::IWifiChip"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 6
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 11
    :cond_0
    const-string v1, "android.hardware.wifi@1.0::IWifiChip"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    .local v1, "iface":Landroid/os/IHwInterface;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    if-eqz v2, :cond_1

    .line 15
    move-object v0, v1

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiChip;

    return-object v0

    .line 18
    :cond_1
    new-instance v2, Landroid/hardware/wifi/V1_0/IWifiChip$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/wifi/V1_0/IWifiChip$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v2, "proxy":Landroid/hardware/wifi/V1_0/IWifiChip;
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->interfaceChain()Ljava/util/ArrayList;

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
    const-string v5, "android.hardware.wifi@1.0::IWifiChip"

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

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 33
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->getService(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "android.hardware.wifi@1.0::IWifiChip"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/wifi/V1_0/IWifiChip;->getService(Ljava/lang/String;Z)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract configureChip(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createApIface(Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createNanIface(Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createP2pIface(Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createStaIface(Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract forceDumpToDebugRingBuffer(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getApIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getApIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAvailableModes(Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCapabilities(Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugHostWakeReasonStats(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V
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

.method public abstract getDebugRingBuffersStatus(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V
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

.method public abstract getId(Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMode(Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNanIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNanIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getP2pIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getP2pIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStaIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStaIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V
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

.method public abstract registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeNanIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeP2pIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestChipDebugInfo(Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestDriverDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestFirmwareDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V
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

.method public abstract startLoggingToDebugRingBuffer(Ljava/lang/String;III)Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopLoggingToDebugRingBuffer()Landroid/hardware/wifi/V1_0/WifiStatus;
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
